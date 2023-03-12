import 'package:flutter/material.dart';
import 'package:resultnepal/add.dart';
import 'package:resultnepal/form.dart';
import 'package:resultnepal/homepage.dart';
import 'package:resultnepal/models/from_model.dart';
import 'package:resultnepal/models/results_model.dart';

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
  DrawerModel(Icons.home, "Home Page", From_model()),
  DrawerModel(Icons.apps_sharp, " All Nepal Result Check ", const Result()),
  DrawerModel(Icons.apps_sharp, " All Category  From ", const FormScreen()),
  DrawerModel(Icons.apps_sharp, "  Entertainment Video", ""),
  DrawerModel(Icons.apps_sharp, "  Internet Speed Test", ""),
  DrawerModel(Icons.info, "About Us", const Add()),
  DrawerModel(Icons.phone, "Contact Us", const HomePage()),
];
