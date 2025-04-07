import 'package:flutter/material.dart';

import 'CustomWidget/card.dart';



class listViewClass extends StatefulWidget {
  const listViewClass({super.key});

  @override
  State<listViewClass> createState() => _listViewClassState();
}

class _listViewClassState extends State<listViewClass> {
  List<String>city=["Amman","Irbid","zarqa","ajloun"];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SafeArea(child:
        Container(
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: city.length,
                itemBuilder: (context,index){

                  return cardwidgetclass(txt: city[index], ic: Icons.import_contacts_sharp);
                } )

        ),
        )
    );

  }
}


