import 'package:flutter/material.dart';

void main() {
  runApp(const Mypage());
}

class Mypage extends StatelessWidget {
  const Mypage({super.key});

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

      // 👉 Yahan tum Container ka code likhoge
      body: Center(
        child:Text("PAWAN HERE",style: TextStyle(fontSize: 3,color: const Color.fromARGB(255, 197, 51, 11), fontWeight:FontWeight.w900,backgroundColor: const Color.fromARGB(255, 214, 210, 15)),)
        
      ),
     
    );
  }
}
