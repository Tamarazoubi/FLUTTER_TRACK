import 'package:flutter/material.dart';
class cardwidgetclass extends StatelessWidget {
  String txt;
  IconData ic;
  cardwidgetclass({required this.txt,required this.ic});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Card(

        margin: EdgeInsets.all(20),
        color: Colors.pink,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(ic,
              color: Colors.black,
              size: 30,),
            Text(txt,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30

              ),),
          ],
        ),
      ),
    )
    ;
  }
}