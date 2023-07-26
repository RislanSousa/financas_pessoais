import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  //const TransactionForm({Key? key}) : super(key: key);

  final titleController = TextEditingController();
  final valueController = TextEditingController();

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

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
              decoration: InputDecoration(
                labelText: 'Valor R\$',
              ),
            ),
            FlatButton(
              onPressed: () {
                final title = titleController.text;
                final value = double.tryParse(valueController.text) ?? 0.0;
                onSubmit(title, value);
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
