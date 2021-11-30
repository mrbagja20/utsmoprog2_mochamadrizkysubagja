import 'dart:async';
import 'package:flutter/material.dart';
import './list_page.dart';

class MainPage extends StatefulWidget {
  @override 
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
  splashScreenStart();
  }
  splashScreenStart() async{
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.push(context,
        MaterialPageRoute(builder: (context) => ListScreen()),
    );
  });
  }

  @override 
 Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       child:Column(
         children: [
           Image.asset('asset/fujifilm.png',
          width: 270,
          height: 630, ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Text('Made with ❤ from Mochamad Rizky S | © 2021'),
          )
         ]
         ),
     ),
   );
 
 }
}