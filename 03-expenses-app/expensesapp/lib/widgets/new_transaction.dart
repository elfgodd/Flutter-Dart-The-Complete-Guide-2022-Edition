import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? _selectedDate;


  void _submitData() {
    final enteredTitle = _titleController.text;
    final enteredAmount = double.parse(_amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      // This will stop the function execution
      // addTx will not reach
      return;
    }

    widget.addTx(enteredTitle, enteredAmount);
    // This closes the modal after entering the data + enter
    Navigator.of(context).pop();
  }

  void _presentDatePicker() {
    // This is a flutter func native
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime.now(),
      // This is a Future
      // The func will not pause for this to run
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      
      setState(() {
        _selectedDate = pickedDate;
      });

    });
  }

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
              controller: _titleController,
              onSubmitted: (_) => _submitData(),
              // onChanged: ((value) {
              //   titleInput = value;
              // }),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Amount',
              ),
              controller: _amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => _submitData(),
              // onChanged: (value) => amountInput = value,
            ),
            Container(
              height: 70,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(_selectedDate == null
                      ? 'No date chosen'
                      : 'Picked Date: ${DateFormat.yMd().format(_selectedDate!)}',
                      // : 'Picked Date: ${DateFormat.yMd().format(_selectedDate)}',
                    ),
                  ),
                  FlatButton(
                    textColor: Theme.of(context).primaryColor,
                    child: Text('Choose Date',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    onPressed: _presentDatePicker,
                  ),
                ],
              ),
            ),
            RaisedButton(
              child: Text('Add Transaction'),
              color: Theme.of(context).primaryColor,
              textColor: Theme.of(context).textTheme.button!.color,
              onPressed: _submitData,
              // RF title is String but amount is a double
              // We need logic here so users won't type Strings like Hello in the amount

              // print(titleInput);
              // print(amountInput);
              // print(titleController.text);
              // print(amountController.text);
            ),
          ],
        ),
      ),
    );
  }
}
