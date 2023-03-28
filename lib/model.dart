import 'package:flutter/material.dart';
import 'package:resultnepal/models/from_model.dart';
import 'package:resultnepal/models/results_model.dart';
import 'models/Entertainment_model.dart';
import 'models/Internetspeed.dart';
import 'models/contact_screen.dart';

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
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
        ),
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: color,
          image: DecorationImage(
            image: AssetImage(imageAsset),
            fit: BoxFit.cover,
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
  DrawerModel("assets/images/logo.png", "Nepal Result Check", const Result()),
  DrawerModel(
      "assets/images/logo.png", "All Category From", const FormScreen()),
  DrawerModel(
      "assets/images/logo.png", "Entertainment Videos", const VidoesScreen()),
  DrawerModel(
      "assets/images/logo.png", "Internet Speed Test", const InternetScreen()),
  DrawerModel("assets/images/logo.png", "Contact Us", const ContactScreen()),
];

class Component {
  String title;
  String image;
  dynamic screen;

  Component(this.title, this.image, this.screen);

  IconData? get icon => null;
}

List<Component> component = [
  Component("Result", "assets/images/result.png", const Result()),
  Component("Form", "assets/images/form.jpg", const FormScreen()),
  Component(
      "Entertainment", "assets/images/entertainment.png", const VidoesScreen()),
  Component("Internet", "assets/images/internet.jpg", const InternetScreen()),
];
