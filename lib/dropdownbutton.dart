import 'package:flutter/material.dart';

class dropDownClass extends StatefulWidget {
  const dropDownClass({super.key});

  @override
  State<dropDownClass> createState() => _dropDownClassState();
}

class _dropDownClassState extends State<dropDownClass> {
  @override

  List <String> coloer=['red','green','yellow','selected value'];
  String intvalue='selected value';
  Color? c=Colors.white;
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: c,
      body: SafeArea(child:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
                value: intvalue,
                items:coloer.map((e) {
                  return DropdownMenuItem(
                    child: Text(e),value: e, );
                } ).toList(),

                onChanged:(e){
                  setState(() {
                    intvalue=e!;
                    switch(e){
                      case  "red":{
                        c=Colors.red;
                      }
                      case "green":{
                        c=Colors.green;
                      }
                      case "yellow":{
                        c=Colors.yellow;
                      }
                    }
                  });
                }
            )
          ],
        ),
      )
      ),

    );

  }
}
