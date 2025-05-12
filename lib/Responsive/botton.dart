import 'package:flutter/material.dart';
import 'package:flutter_track/Responsive/txt.dart';


class sherdbtn extends StatefulWidget {
  const sherdbtn({super.key});

  @override
  State<sherdbtn> createState() => _sherdbtnState();
}

class _sherdbtnState extends State<sherdbtn> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){}, child: Text("go to screen",
    style: bottonstyle,),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey
      ),

    );
  }
}
