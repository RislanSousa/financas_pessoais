import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  //const TransactionForm({Key? key}) : super(key: key);

  final titleController = TextEditingController();
  final valueController = TextEditingController();

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  _submitForm() {
    final title = titleController.text;
    final value = double.tryParse(valueController.text) ?? 0.0;
    onSubmit(title, value);

    if (title.isEmpty || value <= 0) {
      return;
    }
    onSubmit(title, value);
  }
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
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted:(value) => _submitForm() ,
              decoration: InputDecoration(
                labelText: 'Valor (R\$)',
              ),
            ),
            FlatButton(
              child: Text('Nova Transação'),
              textColor: Colors.deepOrange,
              onPressed: _submitForm
            ),
          ],
        ),
      ),
    );
  }
}
