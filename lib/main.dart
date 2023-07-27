import 'package:flutter/material.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Home(),
       debugShowCheckedModeBanner: false,

    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String input ="";
  
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Note App"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add, color: Colors.red,),
          onPressed: () {
            showDialog(context: context, 
            builder: (BuildContext context){
              return AlertDialog(
                title: Text("Add Something"),
                content: TextField(
                  decoration: InputDecoration(
                    hintText: "TODO"
                  ),
                  onChanged: (String value){
                    input = value;
                  },
                ),
                
              );
            });
          },
        ),
      ),
    );
  }
}

