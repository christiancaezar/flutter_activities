import 'package:flutter/material.dart';
import 'package:flutter_application_2/Week_2/week2activity.dart';
import 'package:flutter_application_2/Week_3/week3activity1.dart';
import 'package:flutter_application_2/Week_3/week3activity2.dart';
import 'package:flutter_application_2/Week_3/week3activity3.dart';
import 'package:flutter_application_2/Week_4/week4activity1.dart';
import 'package:flutter_application_2/Week_4/week4activity2.dart';
import 'package:flutter_application_2/Week_4/week4activity3.dart';
import 'package:flutter_application_2/Week_4/week4activity4.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final String bullet = "\u2022 ";

  final borderLine = Container(
            width: double.infinity,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.blue
            ),
          );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Activities [ORTEGA_BSIT4A]'),
      ),
      body: ListView(
        children: [
//WEEK 1 ACTIVITIES
          borderLine,

          Container(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Text(
                  'Week 1 Activities',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          borderLine,
//WEEK 2 ACTIVITIES
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Text(
                  'Week 2 Activities',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Week2Activity(),
                      ),
                    );
                  },
                  splashColor: Colors.blue,
                  child: Text(
                    bullet + 'Week 2 - Activity 1 [Pavlova Description]',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          borderLine,
//WEEK 3 ACTIVITIES
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Text(
                  'Week 3 Activities',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Week3Activity1(),
                      ),
                    );
                  },
                  splashColor: Colors.blue,
                  child: Text(
                    bullet + 'Week 3 - Activity 1 [Login Routing]',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Week3Activity2(),
                      ),
                    );
                  },
                  splashColor: Colors.blue,
                  child: Text(
                    bullet + 'Week 3 - Activity 2 [Buttons]',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Week3Activity3(),
                      ),
                    );
                  },
                  splashColor: Colors.blue,
                  child: Text(
                    bullet + 'Week 3 - Activity 3 [Text Fields]',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          borderLine,
//WEEK 4 ACTIVITIES
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Text(
                  'Week 4 Activities',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Week4Activity1(),
                      ),
                    );
                  },
                  splashColor: Colors.blue,
                  child: Text(
                    bullet + 'Week 4 - Activity 1 [Addition Operation]',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Week4Activity2(),
                      ),
                    );
                  },
                  splashColor: Colors.blue,
                  child: Text(
                    bullet + 'Week 4 - Activity 2 [Arithmetic Operations]',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Week4Activity3(),
                      ),
                    );
                  },
                  splashColor: Colors.blue,
                  child: Text(
                    bullet + 'Week 4 - Activity 3 [Sign-in]',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Week4Activity4(),
                      ),
                    );
                  },
                  splashColor: Colors.blue,
                  child: Text(
                    bullet + 'Week 4 - Activity 4 [Sign-up]',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          borderLine,
        ],
      ),
    );
  }
}
