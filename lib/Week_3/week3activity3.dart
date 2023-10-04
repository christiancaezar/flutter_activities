import 'package:flutter/material.dart';

class Week3Activity3 extends StatelessWidget {
  const Week3Activity3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Week 3 - Activity 3'
        ),
      ),

      body: ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter a search term',
                    ),
                  ),
                ),

                 Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Enter a username',
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.all(30),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search something',
                        contentPadding: const EdgeInsets.all(15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                      ),
                    )
                  ),
                ),

                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 1,
                      color: Colors.purple,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Type something here',
                      contentPadding: const EdgeInsets.all(15),
                      border: InputBorder.none,
                    ),
                    onChanged: (value){},
                  ),
                ),
                SizedBox(height: 30),

                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 1,
                      color: Colors.purple,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: TextField(
                    minLines: 10,
                    maxLines: 20,
                    decoration: const InputDecoration(
                      hintText: 'Type something here',
                      contentPadding: EdgeInsets.all(15),
                      border: InputBorder.none,
                    ),
                    onChanged: (value){},
                  ),
                ),

                Container(
                  margin: const EdgeInsets.all(20),
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      icon: Icon(Icons.people),
                    ),
                  ),
                ),

                Container(
                  margin: const EdgeInsets.all(20),
                  child: const TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      labelText: 'Password',
                      suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                  ),
                ),

                Container(
                  margin: const EdgeInsets.all(20),
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: 'Icon inside text field',
                      prefixIcon: Icon(Icons.book),
                    ),
                  ),
                ),

                Container(
                  margin: const EdgeInsets.all(20),
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: 'CCV',
                      prefixIcon: Icon(Icons.credit_card_rounded),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

