// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 24, 170, 180),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page by Pawan ji'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       shadowColor:Colors.black,
        elevation: 5,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Flutter Container"),
      ),

      body:
          Column(
            children: [
              Expanded(
                child: Container(
                    color: Color.fromARGB(255, 254, 156, 218),
                    height: 20,
                ), 
              ),
               
               Divider(height: 6, color: const Color.fromARGB(137, 210, 10, 10)),
              Expanded(
                child: Container(
                  color:const Color.fromARGB(255, 9, 164, 242),
                  height: 20,
                ),
              ),
          Divider(height: 6, color: const Color.fromARGB(137, 210, 10, 10)),

              Expanded(
                child: Container(
                  color:Color.fromARGB(255, 10, 237, 59),
                  height: 20,
                ),
              ),
          Divider(height: 6, color: const Color.fromARGB(137, 210, 10, 10)),

              Expanded(
                child: Container(
                  color:Colors.cyanAccent,
                  height: 20,
                ),
              ),
            ],
          )
    );
  }
}
