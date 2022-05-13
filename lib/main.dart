import 'package:adding_and_retrieving_data_to_or_from_firestore_with_a_todo_list_app/UI/login.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const TodoListFirestoreRootApp());
}

class TodoListFirestoreRootApp extends StatelessWidget {
  const TodoListFirestoreRootApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adding/Retrieving data to/from Firestore',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}
