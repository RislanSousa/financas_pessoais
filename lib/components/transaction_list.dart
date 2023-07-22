import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tr) {
        return Card(
            child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),

              /*passando padrões de margem do conteiner
                     responsavel por envolver os valores. */

              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.deepOrange,
                width: 2,
              )),
              padding: EdgeInsets.all(10),
              child: Text(
                'R\$  ${tr.value.toStringAsFixed(2)}',

                /* Atribuindo/Interpolando 'R$' ao valor dos produtos,
                       adicionando casa décimal(2).*/

                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(tr.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),

                /*Atribuindo estilo aos textos em destaque */

                Text(
                  DateFormat('d MMM y').format(tr.date),
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                /*Chamando depentencia de formatação da data inportada */
              ],
            ),
          ],
        ));
      }).toList(),
    );
  }
}
