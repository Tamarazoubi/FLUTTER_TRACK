import 'package:flutter/material.dart';



class StackClass extends StatefulWidget {
  const StackClass({super.key});

  @override
  State<StackClass> createState() => _StackClassState();
}

class _StackClassState extends State<StackClass> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[90],
        title: Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Aduit",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),),
              Text("sign in",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ) ),
              Icon(IconData(0xefa7, fontFamily: 'MaterialIcons')),


            ]
        ),
      ),


      body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                    flex: 4,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.purple[100],
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50))

                          ),
                        ),
                        Column(
                          children: [
                            Padding(padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,

                                ),
                                height: 60,
                                width: 60,
                                child: Icon(Icons.person),

                              ),
                            ),
                            Padding(padding:const EdgeInsets.all(8.0) ,
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    box(Colors.purple),
                                    box(Colors.grey),
                                    box(Colors.grey),
                                    box(Colors.grey),

                                  ],

                                )

                            ),

                          ],
                        )
                      ],)

                ),
                Expanded(flex: 1,
                    child:
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                      ),
                    )
                ),

              ],

            ),
            Positioned(
                top: 180,
                right: 80,
                child:

                Stack(
                    children:[ Container(
                      height: 300,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white
                      ),
                      width: 200,
                    ),
                      Container(


                        child: Positioned(
                          top: 10
                          ,

                          right: 10,
                          left: 10,
                          child: Text("1",
                            style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                            ) ,
                          ),
                        ),

                      ),
                      Container(


                        child: Positioned(
                          top: 10,

                          right: 50,
                          left: 90,
                          child: Text("2",
                            style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                            ) ,
                          ),
                        ),

                      ),
                      Container(


                        child: Positioned(
                          right: 0,
                          left: 170,
                          top: 10,
                          child: Text("3",
                            style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                            ) ,
                          ),
                        ),

                      ),
                      Container(


                        child: Positioned(
                          right: 10,
                          left: 10,
                          top: 100
                          ,
                          child: Text("4",
                            style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                            ) ,
                          ),
                        ),

                      ),
                      Container(


                        child: Positioned(
                          top: 100,

                          right: 50,
                          left: 90,
                          child: Text("5",
                            style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                            ) ,
                          ),
                        ),

                      ),
                      Container(


                        child: Positioned(
                          right: 0,
                          left: 170,
                          top: 100,
                          child: Text("6",
                            style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                            ) ,
                          ),
                        ),

                      ),
                      Container(


                        child: Positioned(
                          right: 10,
                          left: 10,
                          top: 100
                          ,
                          child: Text("4",
                            style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                            ) ,
                          ),
                        ),

                      ),
                      Container(


                        child: Positioned(
                          right: 10,
                          left: 10,
                          top: 200
                          ,
                          child: Text("7",
                            style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                            ) ,
                          ),
                        ),

                      ),
                      Container(


                        child: Positioned(
                          top: 200,

                          right: 50,
                          left: 90,
                          child: Text("8",
                            style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                            ) ,
                          ),
                        ),

                      ),
                      Container(


                        child: Positioned(
                          right: 0,
                          left: 170,
                          top: 200,
                          child: Text("9",
                            style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                            ) ,
                          ),
                        ),

                      ),
                      Positioned(
                        top: 270,
                        left: 170,
                        child: Container(
                          child:
                          Icon( IconData(0xe139, fontFamily: 'MaterialIcons')),
                        ),
                      )
                    ]
                )
            ),
ElevatedButton(onPressed: (){

}, child: Text("next")


)

    ],

      ),


    );
  }
}
Widget box(Color c){
  return Padding(
    padding:const EdgeInsets.all(5),
    child: Positioned(
      right: 50,
      left: 30,
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: c,
        ),
      ),
    ),
  );

}

