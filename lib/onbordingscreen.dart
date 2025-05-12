import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class Onbordingscreen extends StatefulWidget {
  const Onbordingscreen({super.key});

  @override
  State<Onbordingscreen> createState() => _OnbordingscreenState();
}

class _OnbordingscreenState extends State<Onbordingscreen> {
  @override
  PageController pagecontroller=PageController();
  bool isLastpage=false;
  bool isnextpage=false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[ PageView(
          onPageChanged: (v){
          setState(() {
            isLastpage=(v==2);
            isnextpage=(v==2||v==1);
          });
          },
          controller: pagecontroller,
          children: [
            Container(color: Colors.red,),
            Container(color: Colors.yellow,),
            Container(color: Colors.orange,),

          ],
        ),
         Container(
             alignment: Alignment(0, 0.8),
             child: Padding(
               padding: const EdgeInsets.all(10.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   isnextpage?   GestureDetector(
                     onTap: (){
                       pagecontroller.jumpToPage(2);
                     },
                       child: Text(" P R E V I S E"))
                   :GestureDetector(
                       onTap: (){
                         pagecontroller.jumpToPage(2);
                       },
                       child: Text("S I K P")),
                   SmoothPageIndicator(controller: pagecontroller, count: 3),
                   isLastpage?    GestureDetector(
                     onTap: (){
                       pagecontroller.nextPage(duration: Duration(microseconds: 300), curve:Curves.bounceIn);
                     },
                       child: Text("D O N E"))
                  :GestureDetector(
    onTap: (){
    pagecontroller.nextPage(duration: Duration(microseconds: 300), curve:Curves.bounceIn);
    },
    child: Text("N E X T")),

                 ],

               ),
             ))
    ],
      ),
    );
  }
}
