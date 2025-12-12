// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
 
void main(){
    runApp(FlutterApp());

}
// ignore: use_key_in_widget_constructors
class FlutterApp extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"PAWAN",
      theme: ThemeData(primaryColor:Color.fromARGB(255, 111, 63, 189) ),
      home: DashBoardScreen(),
    );
  }

}
// ignore: use_key_in_widget_constructors
class DashBoardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        shadowColor: Colors.black,
        elevation: 4,
        title: Text("HELLO",style:TextStyle(fontWeight:FontWeight.bold)),
      ),
      body: Container(
        color: const Color.fromARGB(255, 133, 229, 248),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 206, 203, 12),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomRight: Radius.circular(30)
              ),
              border: Border.all(
                width: 2,
                color: Colors.brown
              ),
              boxShadow:[ 
                BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 3
                )
                ]
              )
            ,
            child: Center(child: Text("PAWAN",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
              ),
            height:100,
            width: 190,)
          ),
        ),
      )
    ;
  }
}   