import 'package:flutter/cupertino.dart';
import '../model/transaction.dart';
import 'Transaction_list.dart';
import 'new_transaction.dart';


class UserTransaction extends StatefulWidget{
  const UserTransaction({super.key});

  @override
  State<StatefulWidget> createState() {
    return UserTransactionState();
  }

}
class UserTransactionState extends State<UserTransaction>{
  final List<Transaction> _userTransaction =[
    Transaction(id: 't1', title: 'Iphone', amount: 1000, date: DateTime.now()),
    Transaction(id: 't2', title: 'Mac', amount: 1500, date: DateTime.now()),
    Transaction(id: 't2', title: 'Mac', amount: 1500, date: DateTime.now(),),
  ];


  void _addNEwTransaction(String txTitle , double txAmount){
    final newTx = Transaction(id: DateTime.now().toString(), title: txTitle, amount: txAmount, date: DateTime.now());

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNEwTransaction),
        TransactionList(_userTransaction)
      ],
    );
  }

}