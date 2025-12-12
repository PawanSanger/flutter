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
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 15, 16, 16),
        ),
        textTheme:  TextTheme(
          headlineLarge: TextStyle(fontSize: 20),
          headlineSmall: TextStyle(fontSize: 15),
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
        elevation: 5,
        shadowColor: Colors.red,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Theme"),
      ),

      body: Column(
        children:[
           Text("Hello", style: Theme.of(context).textTheme.headlineLarge),
           Text("Hello", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.green)),
           ]
      ),
    );
  }
}
