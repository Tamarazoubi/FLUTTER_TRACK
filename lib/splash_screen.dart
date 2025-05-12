import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_track/homescreen.dart';

import 'Form.dart';
import 'onbordingscreen.dart';
 class SplashScreenClass extends StatefulWidget {
   const SplashScreenClass({super.key});

   @override
   State<SplashScreenClass> createState() => _SplashScreenClassState();
 }

 class _SplashScreenClassState extends State<SplashScreenClass> {
   @override
   @override
  void initState() {
  Timer(
    Duration(seconds: 4),
      (){
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder:(context)=>(Onbordingscreen ()) ) ,(rotue)=>false);
      }

  );
    super.initState();
  }
   Widget build(BuildContext context) {
     return Scaffold(
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Image.asset('asset/images/Furniture.jpg'),
                    CircularProgressIndicator(color:Color(0XCD88a5ad) ,)
           ],
         ),
       ),
     );
   }
 }
