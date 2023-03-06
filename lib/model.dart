import 'package:flutter/material.dart';
import 'package:resultnepal/add.dart';
import 'package:resultnepal/form.dart';
import 'package:resultnepal/homepage.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
    return GestureDetector(
      onTap: () async {
        if (await canLaunchUrl(Uri.base)) {
          await launchUrlString(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: color,
              image: DecorationImage(image: AssetImage(imageAsset))),
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
  DrawerModel(Icons.home, "Home", FromScreen()),
  DrawerModel(Icons.phone, "Contact Us", const HomePage()),
  DrawerModel(Icons.info, "About Us", const Add()),
  DrawerModel(Icons.access_alarm, "Alarm", const Add()),
  DrawerModel(Icons.map_outlined, "Map", const Add())
];
