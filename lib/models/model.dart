import 'package:flutter/material.dart';
import 'package:resultnepal/home/entertainment_model.dart';
import 'package:resultnepal/models/from_model.dart';
import 'package:resultnepal/models/results_model.dart';
import '../home/internet_speed.dart';

class ReadBox extends StatelessWidget {
  final String title;
  final String url;
  final Color color;
  final String imageAsset;

  const ReadBox({
    super.key,
    required this.title,
    required this.url,
    required this.color,
    required this.imageAsset,
  });

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

List<DrawerModel> drawerList = [
  DrawerModel(
      "assets/images/homeresult.png", "Nepal Result Check", const Result()),
  DrawerModel(
      "assets/images/form.png", "Apply All Category From", const FormScreen()),
  DrawerModel("assets/images/entertainment.png", "Entertainment Videos",
      const VidoesScreen()),
];

class Component {
  String title;
  String image;
  dynamic screen;

  Component(this.title, this.image, this.screen);

  IconData? get icon => null;
}

List<Component> component = [
  Component("Result", "assets/images/homeresult.png", const Result()),
  Component("Form", "assets/images/form.png", const FormScreen()),
  Component(
      "Entertainment", "assets/images/entertainment.png", const VidoesScreen()),
  Component(
      "Internet", "assets/images/internetword.png", const InternetScreen()),
];
