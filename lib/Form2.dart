import 'package:flutter/material.dart';

import 'package:flutter_track/stack.dart';
//import 'package:lottie/lottie.dart';



class Rigistration extends StatefulWidget {
  const Rigistration({super.key});

  @override
  State<Rigistration> createState() => _RigistrationState();
}

class _RigistrationState extends State<Rigistration> {
  final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    TextEditingController c=TextEditingController();
    List userdate=['omer','cs'];
    return Scaffold(
      body: SafeArea(child:

      Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
            key: formkey,
            child:
            SingleChildScrollView(
              child: Column(
                children: [
                  //  Image.network('https://ouch-prod-var-cdn.icons8.com/ob/illustrations/thumbs/WRHAp9Sia49MVfiY.webp'),
                 // Lottie.network('https://lottie.host/4d0b2829-19d3-42a3-b7b5-8fb6b35c361e/JWzDLc1WTe.json'),
                  TextFormField(
                    controller: c,
                     decoration: InputDecoration(
                        label: Text("Email"),

                        hintText: "example@domain.com",
                        prefixIcon: Icon(Icons.email),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueAccent,
                            width: 3,
                          ),

                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueAccent,
                            width: 3,
                          ),
                        )
                    ),
                    validator: (email){
                      if(!(checkemail(email!))){
                        return 'not vaild';
                      }
                      else
                        return 'vaild';
                    },
                  ),
                  SizedBox(height: 30,),
                  TextFormField(
                    validator: (passward){
                      if(!(checkpassward(passward!))){
                        return 'not vaild';
                      }
                      else
                        return 'vaild';
                    },
                    decoration: InputDecoration(
                        label: Text("passward"),
                        suffixIcon: Icon(Icons.remove_red_eye_sharp),
                        hintText: "*************",
                        prefixIcon: Icon(Icons.password),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueAccent,
                            width: 3,
                          ),

                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueAccent,
                            width: 3,
                          ),
                        )
                    ),

                  ),
                  SizedBox(
                    height:30,
                  ),
                  ElevatedButton(onPressed:(){
                    if(formkey.currentState!.validate());
//Navigator.of(context).pushNamed('routeScreen2',arguments: c);
                 Navigator.of(context).pushNamed('routeScreen',arguments: c.text);

                  } , child:Text('Login') ),
                ],
              ),
            )),
      )
      ),
    );

  }
  bool checkemail(String email) {
    return RegExp(r'^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$').hasMatch(email);
  }
  bool checkpassward(String passward)

  {
    String pattern =r"^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$";
    return RegExp(pattern).hasMatch(passward);
  }
}
