// ignore_for_file: file_names

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Flutter Container"),
      ),

      body:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height:200,
                            width: 100,
                            color:Colors.orange,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height:200,
                              width: 100,
                            color:Color.fromARGB(255, 61, 39, 6),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height:200,
                              width: 100,
                            color:const Color.fromARGB(255, 85, 255, 0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height:200,
                              width: 100,
                            color:Color.fromARGB(255, 0, 0, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:5),
                  Container(
                    height:200,
                    color:const Color.fromARGB(255, 94, 78, 56),
                  ),
                   SizedBox(height: 5),
                  Container(
                    height:200,
                    color:Color.fromARGB(255, 10, 51, 98),
                  ),
                  SizedBox(height: 5),
                  Container(
                    height:200,
                    color:Color.fromARGB(255, 19, 98, 10),
                  ),
                   SizedBox(height: 5),
                  
                ],
              ),
            ),
          )
    );
  }
}
