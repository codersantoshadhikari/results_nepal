import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
      title: "Tiktok Vidoes",
      url: "https://www.tiktok.com/",
      imageAsset: 'assets/images/tiktok.png',
      color: const Color.fromARGB(255, 112, 92, 167),
    ),
    ResultsModel(
      title: "Youtube Vidoes",
      url: "https://www.youtube.com/",
      imageAsset: 'assets/images/youtube.png',
      color: const Color.fromARGB(255, 120, 100, 176),
    ),
  ];
}

class VidoesScreen extends StatelessWidget {
  const VidoesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ResultsModel> result = ResultsModel.resultsModel;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 161, 160, 160),
        appBar: AppBar(
          title: const Text("Welcome to entertainment videos"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: GridView.builder(
            itemCount: ResultsModel.resultsModel.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              // var data = ResultsModel.resultsModel[index];
              return GestureDetector(
                onTap: () {
                  launchUrlString(result[index].url);
                },
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image.asset(
                        result[index].imageAsset,
                        height: 120,
                      ),
                      Text(
                        result[index].title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}