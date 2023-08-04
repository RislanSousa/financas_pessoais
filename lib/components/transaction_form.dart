import 'package:flutter/material.dart';

class TransactionForm extends StatefulWidget {
  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  @override
  _TransactionFormState createState() => _TransactionFormState();
}
class _TransactionFormState extends State<TransactionForm> {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  _submitForm() {
    final title = titleController.text;
    final value = double.tryParse(valueController.text) ?? 0.0;
    widget.onSubmit(title, value);

    if (title.isEmpty || value <= 0) {
      return;
    }
    widget.onSubmit(title, value);
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
              onSubmitted: (_) => _submitForm(),
              decoration: InputDecoration(
                labelText: 'Text',
              ),
            ),
            TextField(
              controller: valueController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted:(_) => _submitForm(),
              decoration: InputDecoration(
                labelText: 'Valor R\$',
              ),
            ),
            FlatButton(
              child: Text('Nova Transação'),
              onPressed: _submitForm
            ),
          ],
        ),
      ),
    );
  }
}
