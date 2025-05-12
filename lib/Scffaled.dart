import 'package:flutter/material.dart';


class Scffaledclass extends StatefulWidget {
  const Scffaledclass({super.key});

  @override
  State<Scffaledclass> createState() => _ScffaledclassState();
}

class _ScffaledclassState extends State<Scffaledclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appbar"),
       // leading: Icon(Icons.add),
        actions: [
          Icon(Icons.add),
          Icon(Icons.add_call),
          Icon(Icons.abc_rounded),
          Icon(Icons.abc_rounded),
          Icon(Icons.abc_rounded),
          Icon(Icons.abc_rounded),
          Icon(Icons.abc_rounded),
        ],
        backgroundColor: Colors.cyan,
flexibleSpace: Padding(padding: const EdgeInsets.all(70),
  child:  Text("Flexbliespace"),

),
        bottom: PreferredSize(preferredSize: Size(10, 100), child: Text("bottom")),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
             height: 100,
            ),
            CircleAvatar(
              radius: 60,
              child: Icon(Icons.person),
            ),
            listtilefun(Icon(Icons.person), Text("person")),
            listtilefun(Icon(Icons.search), Text("search")),
            listtilefun(Icon(Icons.settings), Text("settings")),


          ],
        ),
      ),
    );
  }
  Widget listtilefun(Icon c,Text tx){
    return ListTile(
      leading: c,
      title: tx,
    );
  }
}
