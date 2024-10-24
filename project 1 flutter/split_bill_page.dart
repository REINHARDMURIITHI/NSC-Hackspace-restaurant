import 'package:flutter/material.dart';

superclassclass SplitBillPage extends StatefulWidget {
  @override
  _SplitBillPageState createState() => _SplitBillPageState();
}

class _SplitBillPageState extends State<SplitBillPage> {
  int people = 1;
  double total = 13.0; // Dummy total for now

  @override
  Widget build(BuildContext context) {
    double perPerson = total / people;

    return Scaffold(
      appBar: AppBar(
        title: Text('Split Bill'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Total: \$${total.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Split between how many people?',
              style: TextStyle(fontSize: 16),
            ),
            Slider(
              value: people.toDouble(),
              min: 1,
              max: 10,
              divisions: 9,
              label: people.toString(),
              onChanged: (value) {
                setState(() {
                  people = value.toInt();
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              'Each person pays: \$${perPerson.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}