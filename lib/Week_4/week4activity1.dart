import 'package:flutter/material.dart';

class Week4Activity1 extends StatefulWidget {
  const Week4Activity1({super.key});

  @override
  State<Week4Activity1> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Week4Activity1> {
  
  TextEditingController txtController1 = TextEditingController();
  TextEditingController txtController2 = TextEditingController();
  late String value1;
  late String value2;
  late int sum;
  
  @override
  void initState(){
    value1 = '';
    value2 = '';
    sum = 0;
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }

  addValues(value1, value2){
    sum = value1 + value2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Week 4 - Activity 1'
        ),
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
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: txtController2,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter second value',
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    value1 = txtController1.text;
                    value2 = txtController2.text;
                    addValues(int.parse(value1), int.parse(value2));                
                  });
                },
                child: Text('ADD'),
              ),
              SizedBox(height: 10),
              Text(
                'Sum: $sum',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}

