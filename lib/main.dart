import 'package:flutter/material.dart';
import 'components/transaction_user.dart';

main() => runApp(ExpensesApp());
class ExpensesApp extends StatelessWidget {
  const ExpensesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        elevation: 10,
        title: Text('Despesas pessoais'),
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
              /*Container responsavel pelo estilo do AppBr */
              TransactionUser(),
            ],
          ),
        ),
      ),
    );
  }
}
