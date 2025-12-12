// ignore: duplicate_ignore
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
    var arr=["Pawan","Deepak","Rahul","Prabh","Parv","Gurjot","Nidhi"];
List<int> arr1 = [
  9812345678,
  9876543210,
  9123456780,
  9587456321,
  9090909090,
  8765432109,
  9988776655
];

    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.amber,
        elevation: 10,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Contacts"),
      ),

body: ListView.separated(
  itemCount: arr.length,
  itemBuilder: (context, index) {
    return ListTile(
      leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/bhola.jpg"),
            ),
      title: Text(arr[index]),
      subtitle:  Text("${arr1[index]}"),
      trailing:  Icon(Icons.add),
    );
  },

  separatorBuilder: (context, index) {
    return  Divider(
      thickness: 1,
      height: 1,
      color: Colors.black26,
    );
  }
)
    );
    }
    }