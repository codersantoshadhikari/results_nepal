import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "NEPAL  WEBSITE",

      color: Color.fromARGB(255, 87, 85, 76),
      // theme: ThemeData(),
      home: HomePage(),
    );
  }
}
