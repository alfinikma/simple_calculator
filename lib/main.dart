import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Simple Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();  
  int? result=0, num1=0, num2=0;
  tambah(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! + num2!;
    });
  }
  kali(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! * num2!;
    });
  }
   bagi(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! ~/ num2!;
    });
  }
   kurang(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! - num2!;
    });
  }
  // ignore: unused_field
  int _counter = 0;

  // ignore: unused_element
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(        
        title: Text(widget.title),
      ),
      body:  Column(
        children: [
          Text("Hasil Perhitungan : $result",
          // ignore: prefer_const_constructors
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          // ignore: prefer_const_constructors
          SizedBox(height: 20,
          ),
          TextField(
            controller: controller1,
            decoration: InputDecoration(
              labelText: "Input Pertama",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20) ),
            )
          ),
           // ignore: prefer_const_constructors
           SizedBox(height: 17,
          ),
          TextField(
            controller: controller2,
          decoration: InputDecoration(
              labelText: "Input Kedua",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20) ),
            )
          ),
          // ignore: prefer_const_constructors
          SizedBox(height: 17,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                kali();
                controller1.clear();
                controller2.clear();
              // ignore: prefer_const_constructors
              }, child: Text("x")),
              ElevatedButton(onPressed: (){
                bagi();
                controller1.clear();
                controller2.clear();
              // ignore: prefer_const_constructors
              }, child: Text("/")),
            ],
          ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                tambah();
                controller1.clear();
                controller2.clear();
              // ignore: prefer_const_constructors
              }, child: Text("+")),
              ElevatedButton(onPressed: (){
                kurang();
                controller1.clear();
                controller2.clear();
              // ignore: prefer_const_constructors
              }, child: Text("-")),
            ],
          )
      ],)
      
    );
  }
}

