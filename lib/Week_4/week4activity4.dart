import 'package:flutter/material.dart';

class Week4Activity4 extends StatefulWidget {
  const Week4Activity4({super.key});

  @override
  State<Week4Activity4> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Week4Activity4> {
  TextEditingController name = TextEditingController();
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController cPass = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController status = TextEditingController();
  TextEditingController bDate = TextEditingController();
  late String errorMessage;
  late bool isEmpty;
  
  @override
  void initState(){
    errorMessage = '';
    isEmpty = false;
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }

  void checkEmpty(name, user, pass, cPass, gender, status, bDate){
    setState(() {
      if(name == ''){
        errorMessage = 'Please enter your name.';
        isEmpty = true;
      }
      else if(user == ''){
        errorMessage = 'Please enter your username.';
        isEmpty = true;
      }
      else if(pass == ''){
        errorMessage = 'Please enter your password.';
        isEmpty = true;
      }
      else if(cPass != pass){
        errorMessage = 'Password does not match.';
        isEmpty = true;
      }
      else if(gender == ''){
        errorMessage = 'Please enter your gender.';
        isEmpty = true;
      }
      else if(status == ''){
        errorMessage = 'Please enter your civil status.';
        isEmpty = true;
      }
      else if(bDate == ''){
        errorMessage = 'Please enter your birthdate.';
        isEmpty = true;
      }
      else{
        errorMessage = '';
        isEmpty = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Week 4 - Activity 4'
        ),
      ),

      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: name,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                      hintText: 'Enter your name',
                      prefixIcon: Icon(Icons.account_box),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: user,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                      hintText: 'Enter your username',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: pass,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: cPass,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm Password',
                      hintText: 'Confirm your password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: gender,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Gender',
                      hintText: 'Enter your gender',
                      prefixIcon: Icon(Icons.male),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: status,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Civil Status',
                      hintText: 'Enter your civil status',
                      prefixIcon: Icon(Icons.social_distance),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: bDate,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Birthdate',
                      hintText: 'Enter your birthdate',
                      prefixIcon: Icon(Icons.calendar_month),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: (){
                      checkEmpty(name.text, user.text, pass.text, cPass.text, gender.text, status.text, bDate.text);
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                    ),
                    child: const Text(
                      'Sign-up'
                    ),
                  ),
                  SizedBox(height: 10),
                  (isEmpty) ? Text(
                    errorMessage,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.red,
                    ),
                  ) : Container(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

