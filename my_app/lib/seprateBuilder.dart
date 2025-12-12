import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 236, 24, 91),
        ),
      ),
      home: const MyHomePage(title: 'by Pawan Sanger'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const MyHomePage({required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var arr=["apple","banana","Orange","papaya"];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("PAWAN SANGER"),
        ),
      ),

      body:
         ListView.separated(
          scrollDirection: Axis.vertical,
          itemCount: arr.length,
        itemBuilder: (context,index){
          return Text(arr[index]);
          
         },
         separatorBuilder: (context,index){
          return Divider(height: 150,thickness: 3,);
         })
    );
  }
}
