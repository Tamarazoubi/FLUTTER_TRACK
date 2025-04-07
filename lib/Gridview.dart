import 'package:flutter/material.dart';


class Graidviewclass extends StatefulWidget {
  const Graidviewclass({super.key});

  @override
  State<Graidviewclass> createState() => _GraidviewclassState();
}

class _GraidviewclassState extends State<Graidviewclass> {
  @override
  Widget build(BuildContext context) {
    List<String>city=["Amman","Irbid","Zarqa","Ajloun"];
    List<String>img=['asset/images/amman.jpg','asset/images/irbid.jpg','asset/images/zarqa.jpg'];
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridviewexample"),
      ),
      body:SafeArea(child:
      GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: img.length,
          itemBuilder:(context,index){

            return Card(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(img[index])),
                ),
              ),
            );



          }


      )
      ),

    );
  }
}
