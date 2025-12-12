import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
      home: const MyHomePage( ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
        DateTime? selectedDate;
        var selectedtime;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Flutter Container"),
      ),

      body:
          Column(
            children: [
              ElevatedButton(onPressed: ()async{
                DateTime? datepicker=await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2050));
                  setState(() {
                  selectedDate =datepicker;
                  });
                  }, child: Text("set date")),
            
                      if (selectedDate == null)
            Text("Firstly Select a Date", style: TextStyle(fontSize: 18))
          else
            Text("${DateFormat("dd-MM-yyyy").format(selectedDate!)}", style: TextStyle(fontSize: 18)),
            SizedBox(height: 20,),
              ElevatedButton(onPressed: ()async{
                var timepicker=await showTimePicker(
                  context: context,
                 initialTime: TimeOfDay.now());
                  setState(() {
                  selectedtime =timepicker;
                  });
                  }, child: Text("set time")),
            
                      if (selectedtime == null)
            Text("Firstly Select a time", style: TextStyle(fontSize: 18))
          else
            Text(selectedtime.format(context), style: TextStyle(fontSize: 18))
            ],
          )    );
  }
}
