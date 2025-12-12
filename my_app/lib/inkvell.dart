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
      String msg = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Flutter Container"),
      ),

      body: 
      Center(
        
        child: Column(
          children: [
             Text(msg,
                style: TextStyle(fontSize: 20),
              ),
            InkWell(
              onTap: (){
                print("inkwll tapped");
              },
              onDoubleTap: (){
                print("inkwll double tapped");
              },
              onLongPress: (){
                setState(() {
                  msg="oye kya haal hai";
                });
              },
              child: Container(
                height:200,
                width:300,
                color: Colors.blueGrey,
                child:InkWell(
                  child: Center(child: Text(style:TextStyle(fontSize:10),"Text Button")),
                  onTap: (){
                    print("Text button clicked");
                  },)
              ),
              
            ),
          ],
        ),
      )
      
    );
  }
}
