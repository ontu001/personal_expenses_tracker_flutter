import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './transaction.dart';
import 'package:intl/intl.dart';

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
          Column(children: transaction.map((tx) {
            return Card(child:
              Row(
                children: [
                  Container(
                    child: Text('\$\$'+tx.amount.toString()
                    ,
                      style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 17,color: Colors.purple),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.purple)),
                  ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [

                            Text(tx.title,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black)),


                          Text(
                            DateFormat().format(tx.date),style: TextStyle(fontSize: 10,color: Colors.grey),),

                        ],
                      ),


                ],
              )
              ,elevation: 5,);
          }).toList(),)
        ],
      ),
    );
  }
}