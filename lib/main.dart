//import 'package:expenses/components/transaction_form.dart';

import 'package:flutter/material.dart';

import 'dart:math';
import 'components/transaction_form.dart';
import 'components/transaction_list.dart';
import 'models/transaction.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
    ), //Transaction//Transaction
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

  _openTransactionFormModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return TransactionForm(_addTransaction);
        }
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        elevation: 10,
        title: Text('Despesas pessoais'),
        actions: <Widget>[IconButton(icon: Icon(Icons.add),
            onPressed: () => _openTransactionFormModal(context),
            ),
        ],
      ),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              /*Involvendo 'Colum' com componente 'with widget' substituindo 'Wdget'
               por SingleChildScrollView (Visualização de rolagem de filho unico)
              componente responsavel pro tornar tela scroll-rolavel */

              Container(
                width: double.infinity,
                child: Card(
                  color: Colors.deepOrange,
                  child: Text('Grafico'),
                  elevation: 5,
                ),
              ),
                  TransactionList(_transactions),
                ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _openTransactionFormModal(context),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}
