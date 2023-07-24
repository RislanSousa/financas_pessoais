import 'dart:math';

import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({Key? key}) : super(key: key);

  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'conta de luz',
      value: 211.76,
      date: DateTime.now(),
    ), //Transaction

    Transaction(
      id: 't20',
      title: 'conta #01',
      value: 211.76,
      date: DateTime.now(),
    ),
    //Transaction
    Transaction(
      id: 't3',
      title: 'conta #02',
      value: 211.76,
      date: DateTime.now(),
    ),
    //Transaction
    Transaction(
      id: 't4',
      title: 'conta #03',
      value: 211.76,
      date: DateTime.now(),
    ), //Transaction

    Transaction(
      id: 't5',
      title: 'conta #04',
      value: 211.76,
      date: DateTime.now(),
    ), //Transaction

    Transaction(
      id: 't5',
      title: 'conta #04',
      value: 211.76,
      date: DateTime.now(),
    ), //Transaction
  ];



  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
