import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plant_pitcher/opencamera.dart';
import 'package:plant_pitcher/opengallery.dart';
import 'package:plant_pitcher/dev/about.dart';
import 'package:plant_pitcher/dev/how.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 @override
 Widget build(BuildContext context){
  return Scaffold(
    body: Container(
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top:57),
            child: Image.asset(
              'assets/Pitrecognizerlogo.png',
              width: 150
            )
          ),
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 11),
                        child: const Text(
                          'PitRecognizer',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                      ),
                      const Text(
                        'Identify easily and get',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle( fontSize: 15),
                      ),
                      const Text(
                        'Things done faster',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle( fontSize: 15),
                      ),

                    ]
                  )
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                  child: MaterialButton(
                    padding: EdgeInsets.all(14),
                    minWidth: 190,
                    color: Color.fromARGB(255, 17, 202, 0),
                    child: const Text(
                      "SCAN",
                      style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 19
                      )
                    ),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>OpenCamera()));
                    }
                  )
                ),
                MaterialButton(
                  padding: const EdgeInsets.all(14),
                  minWidth: 190,
                  color: Color.fromARGB(255, 17, 202, 0),
                  child: const Text(
                    "UPLOAD FILE",
                    style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 19
                    )
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OpenGallery()));
                  }
                ),
              ]
            )
          ),
          Container(
            margin: const EdgeInsets.only(top: 50),
            child: MaterialButton(
              minWidth: 140,
              color: Color.fromARGB(255, 8, 92, 0),
              child: const Text(
                "ABOUT US",
                style: TextStyle(
                  color: Color.fromARGB(240, 255, 255, 255), fontSize: 14
                )
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
                },
            )
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: MaterialButton(
              minWidth: 140,
              color: Color.fromARGB(255, 8, 92, 0),
              child: const Text(
                "HOW TO USE",
                style: TextStyle(
                  color: Color.fromARGB(240, 255, 255, 255), fontSize: 14
                )
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (contect)=>How()));
              },
            )
          )
        ]
        )
      )
    )
  );
 }
}