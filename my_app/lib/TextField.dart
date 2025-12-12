// ignore_for_file: sized_box_for_whitespace, file_names

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
    var emailText=TextEditingController();
    var passText=TextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation:7,
        shadowColor: Colors.amberAccent,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Text Field"),
      ),

      body:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                  width:200,
                  child: TextField(
                    controller: emailText,
                    decoration: InputDecoration(
                      hintText: "Enter Name",
                      prefixIcon: Icon(Icons.email),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent)
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11)
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye,color: Colors.greenAccent,),
                        onPressed: (){
                          print("watched");
                        },
                      ),
                    )
                    ),
                  ),
                  SizedBox(height: 10),

                  Container(
                width: 200,
                child: TextField(
                  controller: passText,
                  keyboardType: TextInputType.phone,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:BorderSide(
                        color: Colors.greenAccent,
                      )
                    ),
                    hintText: "Enter Rollno.",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              ElevatedButton(onPressed:(){
                String mail=emailText.text;
                String pass=passText.text.toString();
                print("Email:$mail");
                print("Password:$pass");
              }, child: Text("Login"))
                ],
              ),
            ),
          )
    );
  }
}
