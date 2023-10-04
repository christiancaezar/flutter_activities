import 'package:flutter/material.dart';

class OutputPage extends StatelessWidget {
  const OutputPage({
    super.key,
    required this.username,
    required this.password,
  });

final String username;
final String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Week 3 - Activity 1'
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Username: '+username
            ),
            SizedBox(height: 10),

            Text(
              'Password: '+password
            ),
            SizedBox(height: 10),
            
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text(
                'Go Back'
              ),
            )
          ],
        ),
      ),
    );
  }
}

