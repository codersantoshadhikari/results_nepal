import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("test")),
        body: Container(
          height: 200,
          color: const Color.fromARGB(255, 217, 31, 31),
          child: const Text("Welcome to newscreen"),
        ));
  }
}