import 'package:flutter/material.dart';
import 'package:resultnepal/models/results_model.dart';
import 'package:url_launcher/url_launcher_string.dart';

List<ResultsModel> resultsModel = [
  ResultsModel(
    title: "Pan Card",
    url: "https://taxpayerportal.ird.gov.np/taxpayer/app.html",
    imageAsset: 'assets/images/pan.png',
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
    url: "https://enrollment.donidcr.gov.np/PreEnrollment/",
    imageAsset: 'assets/images/nationalid.png',
    color: const Color.fromARGB(255, 41, 31, 2),
  ),
  ResultsModel(
    title: "Election ",
    url: "https://election.gov.np/en",
    imageAsset: 'assets/images/Election.png',
    color: const Color.fromARGB(255, 19, 18, 19),
  ),
  ResultsModel(
    title: "Police Report",
    url: "https://opcr.nepalpolice.gov.np/#/login",
    imageAsset: 'assets/images/policereport.png',
    color: const Color.fromARGB(255, 244, 123, 3),
  )
];

class FormScreen extends StatelessWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Apply All Category From"),
      ),
      body: GridView.builder(
        itemCount: resultsModel.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              launchUrlString(resultsModel[index].url);
            },
            child: Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              color: Color.fromARGB(255, 30, 56, 172),
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
    );
  }
}
