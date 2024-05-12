import 'package:flutter/material.dart';

import 'results_model.dart';

class ReadBox extends StatelessWidget {
  final String title;
  final String url;
  final Color color;
  final String imageAsset;

  const ReadBox({
    Key? key,
    required this.title,
    required this.url,
    required this.color,
    required this.imageAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: color,
          image: DecorationImage(
            image: AssetImage(imageAsset),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DrawerModel {
  String icon;
  String title;
  dynamic screen;

  DrawerModel(this.icon, this.title, this.screen);
}

class Component {
  String title;
  String image;
  dynamic screen;

  Component(this.title, this.image, this.screen);

  IconData? get icon => null;
}

List<Component> component = [
  Component("Texting", "assets/images/homeresult.png", const Result()),
  Component("homw", "assets/images/form.png", const Result()),
  Component("text", "assets/images/entertainment.png", const Result()),
  Component("go", "assets/images/internetword.png", const Result()),
];
