import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/employee.dart';

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
              'signed as:',
            ),
            const SizedBox(height: 10),
            Text(
              user.email!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            getUserData(user.uid),
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

  getUserData(uid){
    var collection = FirebaseFirestore.instance.collection('Employee');
    return StreamBuilder(
      stream: collection.doc(uid).snapshots(), 
      builder: (context, snapshot) {
        if(snapshot.hasError){
          return Text('Error = ${snapshot.error}');
        }
        if(snapshot.hasData){
          final data = snapshot.data!.data();
          final employee = Employee(
            id: data!['id'],
            name: data['name'],
            email: data['email'],
          );
          return buildUserInfo(employee);
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  buildUserInfo(Employee employee) => Column(
    children: [
      const Text('from firestore:'),
      const SizedBox(height: 15),
      Text(employee.id, style: const TextStyle(
                fontWeight: FontWeight.bold,
              )),
      const SizedBox(height: 15),
      Text(employee.name, style: const TextStyle(
                fontWeight: FontWeight.bold,
              )),
    ],
  );

}