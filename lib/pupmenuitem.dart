import 'package:flutter/material.dart';


class poupmenuitemclass extends StatefulWidget {
  const poupmenuitemclass({super.key});

  @override
  State<poupmenuitemclass> createState() => _poupmenuitemclassState();
}

class _poupmenuitemclassState extends State<poupmenuitemclass> {
  @override
  List <String> coloer=['red','green','yellow','selected value'];
  String intvalue='selected value';
  Color ?C=Colors.white;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:C,
        actions: [
          PopupMenuButton(itemBuilder: (context){
            return coloer.map((i){
              return PopupMenuItem(child: Text(i),value: i);
            }
            ).toList();

          },
              onSelected:(i){
                setState(() {
                  intvalue=i;
                  switch(i){
                    case  "red":{
                      C=Colors.red;
                    }
                    case "green":{
                      C=Colors.green;
                    }
                    case "yellow":{
                      C=Colors.yellow;
                    }
                  }
                });
              }
          )
        ],
      ),
    );
  }
}
