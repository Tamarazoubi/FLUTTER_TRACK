import 'package:flutter/material.dart';
import 'package:flutter_track/stack.dart';

import 'Form2.dart';
import 'Gridview.dart';

main(){
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'routescren2':(context)=>StackClass()
      },
      debugShowCheckedModeBanner: false,
      home:Rigistration(),

    );
  }
}
