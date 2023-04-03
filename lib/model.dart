import 'package:flutter/material.dart';
import 'package:resultnepal/models/from_model.dart';
import 'package:resultnepal/models/results_model.dart';
import 'models/Languagetrf.dart';
import 'models/datecon_screen.dart';
import 'models/entertainment_model.dart';
import 'models/internet_speed.dart';
import 'models/contact_screen.dart';
import 'models/news.dart';

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
  DrawerModel(
      "assets/images/homeresult.png", "Nepal Result Check", const Result()),
  DrawerModel(
      "assets/images/form.png", "Apply All Category From", const FormScreen()),
  DrawerModel("assets/images/entertainment.png", "Entertainment Videos",
      const VidoesScreen()),
  DrawerModel("assets/images/dateeng.png", "English To Nepali date Converter",
      const dateconverterScreen()),
  DrawerModel(
      "assets/images/language.png", "Language Translator", language_Screen()),
  DrawerModel("assets/images/mainloginternet.png", "Internet Speed Test",
      const InternetScreen()),
  DrawerModel("assets/images/news.jpg", "Nepali News ", const NewsScreen()),
  DrawerModel("assets/images/caan.png", "Contact Us", const ContactScreen()),
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
