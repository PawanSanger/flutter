
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
        title: Text("Row Column"),
      ),

      body: SizedBox(
        width:500,
        height:400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,//spaceAround,//spacebetween
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height:100,
              width:300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:[
                   Text("ROW ", style: TextStyle(fontSize: 20)),
                  Text("ROW ", style: TextStyle(fontSize: 20)),
                  Text("ROW ", style: TextStyle(fontSize: 20)),
                  Text("ROW ", style: TextStyle(fontSize: 20)),
                  Text("ROW ", style: TextStyle(fontSize: 20)),
                  Text("ROW ", style: TextStyle(fontSize: 20)),
                ]
              ),
            ),
            Text("Pawan ",style: TextStyle(fontSize: 20),),
            Text("Pawan ", style: TextStyle(fontSize: 20)),
            Text("Pawan ", style: TextStyle(fontSize: 20)),
            Text("Pawan ", style: TextStyle(fontSize: 20)),
            Text("Pawan ", style: TextStyle(fontSize: 20)),
            Text("Pawan ", style: TextStyle(fontSize: 20)),
            ElevatedButton(
               child: Text("cick on me",style: TextStyle(fontSize: 10),),onPressed:(){
              print("clicked");
            } ,
            onLongPress:(){
               print(" Long clicked");
            })
         
          ],
        ),
      ),
    );
  }
}
