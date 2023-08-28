import 'package:flutter/material.dart';
import 'home/home.dart';

void main() {
  runApp(const ListViewApp());
}

class ListViewApp extends StatelessWidget {
  const ListViewApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      routes: {"/": (context) => const HomeScreen()},
    );
  }
}
