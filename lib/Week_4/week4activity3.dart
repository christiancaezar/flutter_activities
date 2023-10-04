import 'package:flutter/material.dart';

class Week4Activity3 extends StatefulWidget {
  const Week4Activity3({super.key});

  @override
  State<Week4Activity3> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Week4Activity3> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
  
  void checkInput(username, password){
    setState(() {
      if(username == ''){
        if(password == ''){
          errorMessage = 'Please enter username and password.';
          isEmpty = true;
        }
        else{
          errorMessage = 'Please enter username.';
          isEmpty = true;
        }
      }
      else if(password == ''){
        errorMessage = 'Please enter password.';
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
        title: const Text(
          'Week 4 - Activity 3'
        ),
      ),

      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'SIGN IN',
                style: TextStyle(
                  fontSize: 28,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  hintText: 'Enter username',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter password',
                  prefixIcon: Icon(Icons.password),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: (){
                  checkInput(usernameController.text, passwordController.text);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                ),
                child: const Text(
                  'Login'
                ),
              ),
              SizedBox(height: 10),
              (isEmpty) ? Text(
                errorMessage,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                ),
              ) : Container(),
            ],
          ),
        ),
      ),
    );
  }
}

