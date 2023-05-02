import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './transaction.dart';

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
 final List <Transaction> transaction =[
   Transaction(id: 't1', title: 'Iphone', amount: 1000, date: DateTime.now()),
   Transaction(id: 't2', title: 'Mac', amount: 1500, date: DateTime.now()),
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Personal expenses tracker"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            height: 400,
            child:  Card(
              color: Colors.red,
              child:  Container(
                  child: Text("header"),
                alignment: Alignment.center,
              ),
              elevation: 10,
            ),
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