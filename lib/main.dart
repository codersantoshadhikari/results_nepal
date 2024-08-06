import 'package:flutter/material.dart';
import 'home/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "NEPAL RESULT",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
