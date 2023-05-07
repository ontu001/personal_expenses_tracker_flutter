import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget{
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(decoration: InputDecoration(hintText: 'input your transaction title',labelText: 'Title'),
              controller: titleController,
            ),
            TextField(decoration: InputDecoration(hintText: 'input your transaction Amount',labelText: 'Amount'),
              controller: amountController,
            ),
            TextButton(onPressed: (){
              addTx(titleController.text, double.parse(amountController.text),

              );

            },child: Text("Add Transaction"),)
          ],
        ),
      ),
    );
  }

}