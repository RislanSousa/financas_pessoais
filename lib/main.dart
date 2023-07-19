import 'package:financas_pessoais/components/transaction_form.dart';
import 'package:financas_pessoais/components/transaction_list.dart';

import 'models/transaction.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'package:intl/intl.dart';
main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {


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
  ];

  //const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        elevation: 10,
        title: Text('Despesas pessoais'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.deepOrange,
              child: Text('Grafico'),
              elevation: 5,
            ),
          ),
          /*Container responsavel pelo estilo do AppBr */
          TransactionList(_transactions),
          TransactionForm(),
          /*Componentes responsaves por inportat
           Lista e Formulario de outras pastas */
        ],
      ),
    );
  }
}
