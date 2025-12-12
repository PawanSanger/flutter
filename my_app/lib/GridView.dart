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
    var arrColor=[Colors.amber,Colors.brown,const Color.fromARGB(255, 115, 169, 35),const Color.fromARGB(255, 4, 1, 35),const Color.fromARGB(255, 202, 38, 202),Colors.amber,];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Flutter Container"),
      ),

      body:
      GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(crossAxisSpacing: 4,mainAxisSpacing: 3,maxCrossAxisExtent:67),itemBuilder: (context,index){
        return Container(color: arrColor[index],);
      },
      itemCount:arrColor.length )
          // GridView.count(crossAxisCount: 2,
          // crossAxisSpacing: 20,
          // mainAxisSpacing: 20,
          // children: [
          //   Container(color: arrColor[0],),
          //   Container(color: arrColor[1],),
          //   Container(color: arrColor[2],),
          //   Container(color: arrColor[3],),
          //   Container(color: arrColor[4],),
          //   Container(color: arrColor[5],),
          // ],)
          // GridView.extent(maxCrossAxisExtent: 200,
          // crossAxisSpacing: 20,
          // mainAxisSpacing: 20,
          // children: [
          //   Container(color: arrColor[0],),
          //   Container(color: arrColor[1],),
          //   Container(color: arrColor[2],),
          //   Container(color: arrColor[3],),
          //   Container(color: arrColor[4],),
          //   Container(color: arrColor[5],),
          // ],)
    );
  }
}
