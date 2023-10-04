import 'package:flutter/material.dart';

class Week4Activity2 extends StatefulWidget {
  const Week4Activity2({super.key});

  @override
  State<Week4Activity2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Week4Activity2> {
  TextEditingController txtController1 = TextEditingController();
  TextEditingController txtController2 = TextEditingController();
  late dynamic value1;
  late dynamic value2;
  late dynamic result;

  @override
  void initState() {
    value1 = '';
    value2 = '';
    result = 0;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void calculateValues(value1, value2, operation) {
    setState(() {
      if (operation == 'add') {
        result = value1 + value2;
      } else if (operation == 'subtract') {
        result = value1 - value2;
      } else if (operation == 'multiply') {
        result = value1 * value2;
      } else if (operation == 'divide') {
        result = value1 / value2;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Week 4 - Activity 2'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: txtController1,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter first value',
                  prefixIcon: Icon(Icons.numbers),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: txtController2,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter second value',
                  prefixIcon: Icon(Icons.numbers),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  value1 = txtController1.text;
                  value2 = txtController2.text;
                  calculateValues(
                      double.parse(value1), double.parse(value2), 'add');
                },
                child: const Text('ADD'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  value1 = txtController1.text;
                  value2 = txtController2.text;
                  calculateValues(
                      double.parse(value1), double.parse(value2), 'subtract');
                },
                child: const Text('SUBTRACT'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Colors.pink,
                ),
                onPressed: () {
                  value1 = txtController1.text;
                  value2 = txtController2.text;
                  calculateValues(
                      double.parse(value1), double.parse(value2), 'multiply');
                },
                child: const Text('MULTIPLY'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Colors.purple,
                ),
                onPressed: () {
                  value1 = txtController1.text;
                  value2 = txtController2.text;
                  calculateValues(
                      double.parse(value1), double.parse(value2), 'divide');
                },
                child: const Text('DIVIDE'),
              ),
              SizedBox(height: 20),
              Text(
                'Result: $result',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
