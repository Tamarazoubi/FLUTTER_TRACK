import 'package:flutter/material.dart';
class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    final arg=ModalRoute.of(context)?.settings.arguments .toString();
    return Scaffold(
      body: SafeArea(child:
      Column(
        children: [
Text("Hello $arg")
        ],
      )),
    );
  }
}
