import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plant_pitcher/dev/app.dart';
void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Plant pitcher',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomePage()
      home: const AppPage(),
    );
  }
}


class AppPage extends StatefulWidget{
  const AppPage({super.key});
  @override
  State<AppPage> createState()=> _AppPage();
}

class _AppPage extends State<AppPage>{

  void initState() {
    super.initState();

    loadData();
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 5), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage()));
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            margin: const EdgeInsets.all(17),
            child: Image.asset('assets/Pitrecognizerlogo.png')
          ),
            Text(
              'Welcome to',
              style: TextStyle(
                color: Colors.black87, fontSize: 19
              )
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: const Text(
                "PitRecognizer",
                style: TextStyle(
                  fontSize: 27
                )
              )
            ),
            Container(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.redAccent),
              ),
            )
          ],
        )
      )
    );
  }
}