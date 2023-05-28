import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:plant_pitcher/dev/reference.dart';
class About extends StatefulWidget{
  const About({super.key});
  @override
  State<About> createState()=> _About();
}

class _About extends State<About>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("About"),backgroundColor: Colors.green),
      body: Center(
        child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(40),
                child: const Text("About",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)
                )
              ),
              Container(
                margin: EdgeInsets.all(19),
                child: Text("Nepenthes is the sole genus of the Nepenthaceae family and one of the largest carnivorous plants. Because of their extremely specialized foliage, which takes the form of hollow, water-filled vessels, or pitchers, they can entice and catch arthropods and, in rare instances, frogs, rodents, and small birds (McPherson, 2009)."+
                "The Philippines, with 59 Nepenthes species, was found to be more diverse (King and Cheek, 2020). King and Cheek (2020) also reported that the Philippines, as the world's current hotspot for the Nepenthes variety, is now regarded to have the greatest potential for discovering new Nepenthes species."+
                "Despite the increasing interest in automating the process of species identification today, the discovery of new Nepenthes species is challenging as monitoring efforts are needed. Furthermore, there is a lack of awareness and knowledge about these plants among local people, particularly in the Philippines."+
                "Therefore, PitRecognizer was designed to provide recognition of various plant pitchers while also serving as a significant source of knowledge for future researchers and a learning system for people in the community. It also contributed to research, development, and engineering by developing a tool that enabled convenient identification of the plant pitchers and reduced the large amount of monitoring work. ", textAlign: TextAlign.justify
                )
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 17),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Reference()));
                  },
                  padding: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                  color: Color.fromARGB(255, 8, 92, 0),
                  child: const Text("Reference", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500))
                )  
              )
            ],
        ),    
      )
    );
  }
  launchUrl(Uri url) {}
}