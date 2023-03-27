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
  IconData icon;
  String title;
  dynamic screen;

  DrawerModel(this.icon, this.title, this.screen);
}

List<DrawerModel> drawerList = [
  DrawerModel(Icons.apps_sharp, "Nepal Result Check", const Result()),
  DrawerModel(Icons.apps_sharp, "All Category From", const FormScreen()),
  DrawerModel(Icons.apps_sharp, "Entertainment Videos", const VidoesScreen()),
  DrawerModel(Icons.apps_sharp, "Internet Speed Test", const InternetScreen()),
  DrawerModel(Icons.phone, "Contact Us", const ContactScreen()),
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
