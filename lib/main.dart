import 'package:expense_tracker/pages/categoryselection.dart';
import 'package:expense_tracker/pages/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Expense Tracker",
      home: Homescreen(),
      routes: {
        '/home': (context) => Homescreen(),
        '/categorysel':(context) => Categoryselection(),
      },
    );
  }
}