import 'package:flutter/material.dart';


class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
      ),
      body: const Center(
        child: Text(
          "Welcome To About Us Screen",
        ),
      ),
    );
  }
}
