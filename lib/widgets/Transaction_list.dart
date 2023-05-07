import 'package:flutter/material.dart';
import '../model/transaction.dart';
import 'package:intl/intl.dart';


class TransactionList extends StatelessWidget{
  final List<Transaction> transactions;
  TransactionList(this.transactions);
  @override


  Widget build(BuildContext context) {


    return Container(
      height: 700,
       child:  ListView.builder(
         itemBuilder: (ctx, index){
           return Card(child:
           Row(
             children: [
               Container(
                 child: Text('\$\$'+transactions[index].amount.toString()
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

                   Text(transactions[index].title,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black)),


                   Text(
                     DateFormat().format(transactions[index].date),style: TextStyle(fontSize: 10,color: Colors.grey),),

                 ],
               ),


             ],
           )
             ,elevation: 5,);
         },
         itemCount: transactions.length,
       ),
     );
  }

}