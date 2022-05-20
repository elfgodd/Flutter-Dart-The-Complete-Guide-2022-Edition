import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
                decoration: InputDecoration(
                  labelText: 'Title',
                ),
                controller: titleController
                // onChanged: ((value) {
                //   titleInput = value;
                // }),
                ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              controller: amountController,
              // onChanged: (value) => amountInput = value,
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.purple,
              onPressed: (() {
                // RF title is String but amount is a double
                // We need logic here so users won't type Strings like Hello in the amount
                addTx(
                  titleController.text,
                  double.parse(amountController.text));
                // print(titleInput);
                // print(amountInput);
                // print(titleController.text);
                // print(amountController.text);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
