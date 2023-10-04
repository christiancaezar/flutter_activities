import 'package:flutter/material.dart';
import 'package:flutter_application_2/Week_3/outputpage.dart';

// ignore: must_be_immutable
class Week3Activity1 extends StatelessWidget {
  Week3Activity1({super.key});

TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Week 3 - Activity 1'
        ),
      ),
      
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: usernameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter username',
                      labelText: 'USERNAME',
                    ),
                    onChanged: (value){

                    },
                  ),
                  SizedBox(height: 10),

                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter password',
                      labelText: 'PASSWORD',
                    ),
                    onChanged: (value){
                      
                    },
                  ),
                  SizedBox(height: 10),

                  ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => OutputPage(username: usernameController.text, password: passwordController.text),
                        ),
                      );
                    },
                    child: Text(
                      'LOGIN'
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      minimumSize: const Size.fromHeight(50),
                    ),
                )
              ],
            ),
      ),
    );
  }
}

