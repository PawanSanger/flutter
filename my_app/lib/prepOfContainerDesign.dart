// ignore_for_file: sort_child_properties_last, file_names

import 'package:flutter/material.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({ super.key });

    @override
  Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner:false,
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
    const MyHomePage({ super.key, required this.title });

  final String title;

    @override
    State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    @override
  Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
              elevation: 6,
              shadowColor: Colors.black,
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                title: Text("PAWAN SEEKH RAHA HAI.."),
            ),

            body:
            Container(
              color: Colors.blueAccent,
              child: Center(child: Container(
                child: Center(child: Text("PAWAN",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 13, 240, 180),
                  // borderRadius: BorderRadius.only(topLeft: Radius.circular(45),bottomRight: Radius.circular(45) ),
                  boxShadow: [BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 3,
                  )],
                  border: Border.all(
                    width:3,
                    color:Colors.green,
                  ),
                  shape: BoxShape.circle,
                 
                ),
                 height: 100,
                 width: 150,
              )),
            )
        );
    }
}
