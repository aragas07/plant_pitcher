import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class How extends StatefulWidget{
  const How({super.key});
  @override
  State<How> createState()=> _How();
}

class _How extends State<How>{
  @override
  Widget build(BuildContext context){		
    return Scaffold(
      appBar: AppBar(title: const Text("How to use")),
      body: ListView(
            children: [
              CarouselSlider(items: [
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/files.png',
                        height: 300,
                        width: 470,  
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(17),
                        padding: EdgeInsets.only(top: 10),
                        child: const Text(
                          "Upload",
                          style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700)
                        )  
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                        child: const Text(
                          'Upload a File by importing from your phone. In using an image upload, it is recommended to use a "JPEG" fiel. Choose the best clear image of the plant image when using image upload.'
                        )
                      )
                    ],
                  )
                ),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Image.asset(
                      'assets/scan.png',
                        height: 300,
                        width: 470,  
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(17),
                        padding: EdgeInsets.only(top: 10),
                        child: const Text(
                          "Scan",
                          style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700)
                        )  
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                        child: const 
                      Text(
                          "Open the Application's Camera, and press the button to SCAN. Take a clear shot of the plant pitcher, it should not be blurry and far from the camera. Focus only to take a clear picture of the plant pitcher without distraction."
                        )
                      )
                    ],
                  )  
                )
              ], 
                options: CarouselOptions(
                  height: 700,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 1500),
                  viewportFraction: 1.0,
                ),
              )
            ],
      )
    );
  }
}