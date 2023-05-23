import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage(),);
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Principle=TextEditingController();
  final Time=TextEditingController();
  final Rate=TextEditingController();
  double result=0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Interest Calculator"),),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(children: [
          Text("Enter the Principle"),
          TextFormField(
            controller: Principle,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Enter the time"),
          ),
          TextFormField(
            controller: Time,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Enter the Rate"),
          ),
          TextFormField(
            controller: Rate,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              result=(double.parse(Principle.text)*double.parse(Time.text)*double.parse(Rate.text))/100;
            });
          }, child: Text("Calculate")),
          const SizedBox(
            height: 30,
          ),
          Text("The interest is "+result.toString()),
        ],),
      ),
    );
  }
}