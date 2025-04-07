import 'package:flutter/material.dart';
import 'package:flutter_track/style/coloer.dart';

class Textfelidclass extends StatefulWidget {
  const Textfelidclass({super.key});

  @override
  State<Textfelidclass> createState() => _TextfelidclassState();
}

class _TextfelidclassState extends State<Textfelidclass> {
  @override
  TextEditingController controller=TextEditingController();

  String input="";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbgcoloer,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(



              controller: controller,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(),
                focusedBorder:OutlineInputBorder(),
                hintText: 'email',
                label: Text("Name"),
                errorBorder: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),

              ),
            ),

            ElevatedButton(onPressed:(){
              setState(() {
                input=controller.text;


              });
            } ,
                child:Text('pressBoutton'

                ) ),
            Text(input)

          ],

        ),
      ),
    );

  }
}
