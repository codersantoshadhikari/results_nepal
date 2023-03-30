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
  ),
  ResultsModel(
    title: "Driving  From",
    url: "https://applydl.dotm.gov.np/",
    imageAsset: 'assets/images/result.png',
    color: const Color.fromARGB(255, 244, 123, 3),
  ),
  ResultsModel(
    title: "IPO   Apply",
    url: "https://meroshare.cdsc.com.np/",
    imageAsset: 'assets/images/ipoform.png',
    color: const Color.fromARGB(255, 244, 123, 3),
  ),
  ResultsModel(
    title: "NOC   Apply",
    url: "https://noc.moest.gov.np/",
    imageAsset: 'assets/images/noc.png',
    color: const Color.fromARGB(255, 244, 123, 3),
  ),
  ResultsModel(
    title: "QR Code   Apply",
    url: "https://vaccine.mohp.gov.np/public-request-form",
    imageAsset: 'assets/images/qrlogo.png',
    color: const Color.fromARGB(255, 244, 123, 3),
  ),
];

class FormScreen extends StatelessWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
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
              color: const Color.fromARGB(255, 234, 235, 238),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      resultsModel[index].imageAsset,
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      resultsModel[index].title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
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
