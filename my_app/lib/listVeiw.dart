// ignore: file_names
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
        title: Text("Pawan Sanger"),
      ),

      body:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Pawan",style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Pawan",style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Pawan",style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Pawan",style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Pawan",style: TextStyle(fontSize: 20),),
                  ),
                ],
              ),
            ),
          )
    );
  }
}
