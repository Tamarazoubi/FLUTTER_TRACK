import 'package:flutter/material.dart';

import 'CustomWidget/TextForm.dart';

class formclass extends StatefulWidget {
  const formclass({super.key});

  @override
  State<formclass> createState() => _formclassState();
}

class _formclassState extends State<formclass> {
  final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text("Registration",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),),
        ),
      ),
      body: Form(
          key: formkey,
          child:
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [

                TextformCustom(lbl: "Email",hit: "example@domain.com",preicon: Icons.email,
                  suicon:Icons.abc ,
                  enbordercoloer: Colors.black,
                  foubordercoloer:Colors.black ,
                ),
                SizedBox(
                  height: 40,
                ),
                TextformCustom(lbl: "passward",hit:'********',
                  preicon: Icons.password,
                  suicon: Icons.remove_red_eye_sharp,
                  foubordercoloer: Colors.black,
                  enbordercoloer: Colors.black,),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (input) {
                    if(input!.isEmpty){
                      return 'this feild is reqerid';
                    }
                    else if(input!.length <8) {
                      return 'pleses insert 8 charcter';
                    }
                    return null;
                  },



                  decoration: InputDecoration(
                      label: Text("Email"),
                      hintText: "email@domain.com"
                  ),
                ),

                ElevatedButton(onPressed: (){
                  if(formkey.currentState!.validate()){
                    print("Noerro");

                  }
                }, child: Text('login')),

              ],


            ),
          )),
    );
  }
}
