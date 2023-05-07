import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget{
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  void subMit(){
    final enterTitle = titleController.text;
    final enterAmount = double.parse(amountController.text);

    if (enterTitle.isEmpty || enterAmount<=0){
      return;
    }
    addTx(
      enterTitle,
        enterAmount
    );
}

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
              onSubmitted: (_)=> subMit(),
              keyboardType: TextInputType.text,
              controller: titleController,
            ),
            TextField(decoration: InputDecoration(hintText: 'input your transaction Amount',labelText: 'Amount'),
              keyboardType: TextInputType.number,
              onSubmitted: (_)=> subMit(),
              controller: amountController,
            ),
            TextButton(onPressed: subMit,
              child: Text("Add Transaction"),)
          ],
        ),
      ),
    );
  }

}