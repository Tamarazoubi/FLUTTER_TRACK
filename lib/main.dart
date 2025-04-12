import 'package:flutter/material.dart';

import 'package:flutter_track/stack.dart';

import 'Form2.dart';
import 'Gridview.dart';
import'page2.dart';
main(){
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
routes: {'routeScreen':(context)=>screen2()},
      debugShowCheckedModeBanner: false,
  home: Rigistration(),
    );
  }
}
