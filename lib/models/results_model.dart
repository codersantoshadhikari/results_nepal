import 'package:flutter/material.dart';
import 'package:resultnepal/screens/browser_screen.dart';

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
      url: "https://see.ntc.net.np",
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
      color: const Color.fromARGB(255, 12, 12, 12),
    ),
    ResultsModel(
      title: "TU Result",
      url: "https://tuexam.edu.np/",
      imageAsset: 'assets/images/tu.PNG',
      color: const Color.fromARGB(255, 16, 156, 21),
    ),
    ResultsModel(
      title: "KU Result",
      url: "https://ku.edu.np/",
      imageAsset: 'assets/images/ku.png',
      color: const Color.fromARGB(255, 147, 6, 6),
    ),
  ];
}

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ResultsModel> result = ResultsModel.resultsModel;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 161, 160, 160),
        appBar: AppBar(
          title: const Text(
            "Check you Result",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 5, 5, 5),
            ),
          ),
        ),
        body: GridView.builder(
          itemCount: ResultsModel.resultsModel.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            var data = ResultsModel.resultsModel[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BrowserScreen(url: data.url)));
                //launchUrl(Uri.parse(data.url));
              },
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        result[index].imageAsset,
                        height: 120,
                      ),
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
    );
  }
}