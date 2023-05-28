import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_tflite/flutter_tflite.dart';
import 'package:image/image.dart' as img;
import 'dart:convert';

class OpenGallery extends StatefulWidget{
  const OpenGallery({super.key});
  
  @override
  State<OpenGallery> createState()=> _OpenGallery();
}

class _OpenGallery extends State<OpenGallery>{
  bool loading = true;
  File? image;
  List? _output;
  final imagepicker = ImagePicker();
  List? _items;
  readJson(name) async {
    try{
      print(":${name}:");
      final String response = await rootBundle.loadString('assets/plants_data.json');
      final data = await json.decode(response);
      setState(() {
        _items = data[name];
      });
    }catch(e){
      print(e);
    }
  }
  detectimage(File image) async {
    try{
      var prediction = await Tflite.runModelOnImage(
          path: image.path,
          numResults: 41,
          threshold: 0.6,
          imageMean: 127.5,
          imageStd: 127.5);

      setState(() {
        _output = prediction;
        loading = false;
      });
      readJson(_output![0]['label'].toString().substring(2).trim());
    } catch(e){
      print(e);
    }
  }

  @override
  void initState(){
    super.initState();
    loadmodel().then((value){
      setState((){});
    });
    pickimage_gallery();
  }

  @override
  void dispose() {
    super.dispose();
    Tflite.close();
  }

  loadmodel() async {
    Tflite.close();
    await Tflite.loadModel(model: 'assets/model_unquant.tflite', labels: 'assets/labels.txt');
  }

  pickimage_gallery() async {
    PickedFile? image = await imagepicker.getImage(source: ImageSource.gallery);
    print("This is example to view the error");
    if (image == null) 
      return null;
    setState(()=>this.image = File(image.path)); 
    detectimage(this.image!);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Plant Pitcher"),backgroundColor: Colors.green),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: MaterialButton(
                  onPressed: (){pickimage_gallery();},
                  color: Color.fromARGB(255, 17, 202, 0),
                  child: const Text(
                    "UPLOAD FILE",
                    style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 19
                    )
                  )
                )
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: image != null ? Image.file(File(image!.path)) : Text("null"),
              ),
              _output != null ? Text(
                (_output![0]['label'].toString().substring(2)),
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 23)
                ):Text(""),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  alignment: Alignment.bottomLeft,
                  child: const Text("Characteristics", textAlign: TextAlign.right, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
                ),
                Container(
                  child: Column(
                    children: [
                      for(int x = 0; x < _items![0]['Characteristics'].length ;x++)...[
                        Container(
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.only(left: 20),
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                          child: Text("• "+_items![0]['Characteristics'][x].toString())
                        ),
                      ],
                    ],
                  )
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  padding: const EdgeInsets.only(top: 7),
                  alignment: Alignment.bottomLeft,
                  child: const Text("Etymology", textAlign: TextAlign.right, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: const EdgeInsets.only(left: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  child: Text("• "+_items![0]['Etymology'].toString())
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  padding: const EdgeInsets.only(top: 7),
                  alignment: Alignment.bottomLeft,
                  child: const Text("Ecology and Distribution", textAlign: TextAlign.right, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: const EdgeInsets.only(left: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  child: Text("• "+_items![0]['Ecology and Distribution'].toString())
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  padding: const EdgeInsets.only(top: 7),
                  alignment: Alignment.bottomLeft,
                  child: const Text("Conservation Notes", textAlign: TextAlign.right, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: const EdgeInsets.only(left: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  child: Text("• "+_items![0]['Conservation Notes'].toString())
                )

            ],
          ),
        )
      )
    );
  }
}

