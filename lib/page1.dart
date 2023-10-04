import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  void initState(){
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You successfully connected to Firebase!',
            ),
            const SizedBox(height: 10),
            const Text(
              'signed ass:',
            ),
            const SizedBox(height: 10),
            Text(
              user.email!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: (){
                FirebaseAuth.instance.signOut();
              }, 
              child: const Text(
                'SIGN OUT'
              ),
            ),
          ]
        ),
      ),
    );
  }
}