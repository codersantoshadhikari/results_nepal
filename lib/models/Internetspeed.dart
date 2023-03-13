import 'package:flutter/material.dart';
import 'package:resultnepal/models/results_model.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
    // List<ResultsModel> result = ResultsModel.resultsModel;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 161, 160, 160),
        appBar: AppBar(
          title: const Text("Check Your Internet Speed"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: GridView.builder(
            itemCount: resultsModel.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              // var data = ResultsModel.resultsModel[index];
              return GestureDetector(
                onTap: () {
                  launchUrlString(resultsModel[index].url);
                },
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image.asset(
                        resultsModel[index].imageAsset,
                        height: 120,
                      ),
                      Text(
                        resultsModel[index].title,
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
