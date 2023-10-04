import 'package:flutter/material.dart';

class Week2Activity extends StatelessWidget {
  const Week2Activity({super.key});

  final String description = 'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.';

  buildColumn() => Column(
        children: [
          Image.asset('assets/pavlova.png'),
          const SizedBox(height: 20),

          const Center(
            child: Text(
              'Strawberry Pavlova',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.all(15),
            child: Text(
              description,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 19,
              ),
            ),
            ),
            ],
          );
    
    buildStar(int rating, reviews) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for(int i = 0; i < 5; i++)
                  Icon(Icons.star, size: 24, color: i < rating? Colors.yellow : Colors.black),
              SizedBox(width: 20),

              Text(
                reviews + ' Reviews',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              )
            ],
          );
      
      buildIconTabs(iconVal, title, time) => 
            Column(
              children: [
                Icon(iconVal, size: 24, color: Colors.green),
                SizedBox(height: 5),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Text(
                  time,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ],
            );

      buildRowTabs() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildIconTabs(Icons.kitchen, 'PREP', '25 mins.'),
          buildIconTabs(Icons.timer, 'COOK', '1 hr.'),
          buildIconTabs(Icons.person, 'PAX', '4-6'),
        ]
      );
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Week 2 - Activity'
        ),
      ),
      body: Center(
        child: ListView(
            children: [
              buildColumn(),
              buildStar(4, '90'),
              SizedBox(height: 20),
              buildRowTabs(),
              SizedBox(height: 20),
            ],
          )
      )
    );
  }
}

