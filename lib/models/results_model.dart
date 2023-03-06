import 'package:flutter/material.dart';

class ResultsModel {
  final String title;
  final String url;
  final String imageAsset;
  final Color color;

  ResultsModel(
      {required this.title,
      required this.url,
      required this.color,
      required this.imageAsset});

  static List<ResultsModel> resultsModel = [
    ResultsModel(
      title: "SEE Result",
      url: "https://see.ntc.net.np/",
      imageAsset: 'assets/images/see.png',
      color: const Color.fromARGB(255, 120, 100, 176),
    ),
    ResultsModel(
      title: "NEB Result",
      url: "https://neb.ntc.net.np/",
      imageAsset: 'assets/images/NEB.png',
      color: const Color.fromARGB(255, 12, 20, 33),
    ),
    ResultsModel(
      title: "PU Result",
      url: "https://pu.edu.np/",
      imageAsset: 'assets/images/pu.jfif',
      color: Colors.orange,
    ),
    ResultsModel(
      title: "TU Result",
      url: "https://tuexam.edu.np/",
      imageAsset: 'assets/images/tu.png',
      color: const Color.fromARGB(255, 16, 156, 21),
    ),
    ResultsModel(
      title: "KU Result",
      url: "https://ku.edu.np/",
      imageAsset: 'assets/images/ku.png',
      color: const Color.fromARGB(255, 147, 6, 6),
    ),
    ResultsModel(
      title: "Pan Card",
      url: "https://taxpayerportal.ird.gov.np/taxpayer/app.html",
      imageAsset: 'assets/images/pan.jpg',
      color: const Color.fromARGB(255, 228, 58, 6),
    ),
    ResultsModel(
      title: "E Passport From",
      url: "https://emrtds.nepalpassport.gov.np/",
      imageAsset: 'assets/images/epassport.png',
      color: const Color.fromARGB(255, 55, 49, 4),
    ),
    ResultsModel(
      title: "National ID Card",
      url: "http://www.nidmc.gov.np/PreEnrollment/",
      imageAsset: 'assets/images/nationalid.jfif',
      color: const Color.fromARGB(255, 41, 31, 2),
    ),
    ResultsModel(
      title: "Election Commission",
      url: "https://election.gov.np/en",
      imageAsset: 'assets/images/Election.png',
      color: const Color.fromARGB(255, 19, 18, 19),
    ),
    ResultsModel(
      title: "Police Report",
      url: "https://opcr.nepalpolice.gov.np/#/login",
      imageAsset: 'assets/images/policereport.png',
      color: const Color.fromARGB(255, 244, 123, 3),
    ),
    ResultsModel(
      title: "Your Internet Speed",
      imageAsset: 'assets/images/speed.png',
      url: "https://fast.com/",
      color: const Color.fromARGB(255, 176, 7, 7),
    ),
    ResultsModel(
      title: "Short Videos",
      url: "https://www.tiktok.com/",
      imageAsset: 'assets/images/tiktok.png',
      color: const Color.fromARGB(255, 56, 34, 3),
    ),
  ];
}
