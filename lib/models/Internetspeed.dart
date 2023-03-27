import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'package:resultnepal/models/results_model.dart';

List<ResultsModel> resultsModel = [
  ResultsModel(
    title: "Fast",
    imageAsset: 'assets/images/fast.png',
    url: "https://fast.com/",
    color: const Color.fromARGB(255, 176, 7, 7),
  ),
  ResultsModel(
    title: "Speed",
    url: "https://www.speedtest.net/",
    imageAsset: 'assets/images/speed.png',
    color: const Color.fromARGB(255, 56, 34, 3),
  ),
];

class InternetScreen extends StatelessWidget {
  const InternetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 4, 4, 85),
        appBar: AppBar(
          title: const Text(
            "Check Your Internet Speed",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: GridView.builder(
            itemCount: resultsModel.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  launchUrlString(resultsModel[index].url);
                },
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  color: Color.fromARGB(255, 91, 44, 145),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        resultsModel[index].imageAsset,
                        height: 120,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        resultsModel[index].title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
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
