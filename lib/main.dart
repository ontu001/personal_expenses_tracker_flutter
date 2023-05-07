import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './widgets/user_transaction.dart';



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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Personal expenses tracker"),),
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 50,
              child:  Card(
                color: Colors.red,
                child:  Container(
                  child: Text("header"),
                  alignment: Alignment.center,
                ),
                elevation: 10,
              ),
            ),
            UserTransaction()
          ],
        ),
      ),
    );
  }
}

