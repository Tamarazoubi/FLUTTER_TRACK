import 'package:flutter/material.dart';

class TextformCustom extends StatelessWidget {
  String lbl;
  String hit;
  IconData preicon;
  IconData suicon;
  Color enbordercoloer;
  Color foubordercoloer;
  TextformCustom({
    required this.lbl,
    required this.hit,
    required this.preicon,
    required this.suicon,
    required this.enbordercoloer,
    required this.foubordercoloer
  });

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      validator: (v){
        if(v!.length<8)
          return 'pleas insert 8 charactre';
      },
      decoration: InputDecoration(
        label: Text(lbl),
        hintText: hit,
        prefixIcon: Icon(preicon),
        suffix: Icon(suicon),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: enbordercoloer,
            width: 4,
          ),

        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: foubordercoloer,
            width: 4,
          ),
        ),
      ),
    );
  }
}
