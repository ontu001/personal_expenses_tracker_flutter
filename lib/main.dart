import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Personal expenses tracker",
      home: HomeActivity(),
    );
  }

}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Personal expenses tracker"),),
      body: Column(
        children: [
          Card(
            child: Container(child: Text("header"),width: double.infinity,),
            elevation: 10,
          ),
          Card(
            child:
            Text("component"),
            elevation: 10,
          ),
        ],
      ),
    );
  }
}