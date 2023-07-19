import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  //const TransactionForm({Key? key}) : super(key: key);

  final titleController = TextEditingController();
  final valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Text',
              ),
            ),
            TextField(
              controller: valueController,
              decoration:InputDecoration(
                labelText: 'Valor R\$',
              ),
            ),
            FlatButton(
              onPressed: () {
                print(titleController.text);
                print(valueController.text);
              },
              child: Text('Nova Transação'),
              textColor: Colors.deepOrange,
            ),
          ],
        ),
      ),

    );
  }
}
