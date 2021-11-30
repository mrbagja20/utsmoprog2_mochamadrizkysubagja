import 'package:flutter/material.dart';
import 'package:uts_instax_mrizky/splash_page.dart';



import './splash_page.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
 Widget build(BuildContext context){
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: MainPage(), 
   );
 } 
}