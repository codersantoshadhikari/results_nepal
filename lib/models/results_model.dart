import 'package:flutter/material.dart';
import 'package:resultnepal/screens/browser_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class ResultsModel {
  final String title;
  final String url;
  final String imageAsset;
  final Color color;

  ResultsModel({
    required this.title,
    required this.url,
    required this.color,
    required this.imageAsset,
  });

  static List<ResultsModel> resultsModel = [
    ResultsModel(
      title: "SEE Result",
      url: "https://see.ntc.net.np",
      imageAsset: 'assets/images/see.png',
      color: const Color.fromARGB(255, 61, 29, 151),
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
      imageAsset: 'assets/images/pu.png',
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
    ResultsModel(
      title: "NUS Result",
      url: "https://nsuexam.edu.np/exam/check_results",
      imageAsset: 'assets/images/nus.png',
      color: const Color.fromARGB(255, 147, 6, 6),
    ),
    ResultsModel(
      title: "Purbanchal Result",
      url: "https://www.puexam.edu.np/index.php/find-results",
      imageAsset: 'assets/images/pubr.png',
      color: const Color.fromARGB(255, 147, 6, 6),
    ),
    ResultsModel(
      title: "LBU Result",
      url: "https://lbu.edu.np/exams-and-results/",
      imageAsset: 'assets/images/lbu.png',
      color: const Color.fromARGB(255, 147, 6, 6),
    ),
    ResultsModel(
      title: "Far-Western Result",
      url: "https://www.fwu.edu.np",
      imageAsset: 'assets/images/far.png',
      color: const Color.fromARGB(255, 147, 6, 6),
    ),
    ResultsModel(
      title: "Mid-Western Result",
      url: "https://muexam.edu.np/exam/check_results",
      imageAsset: 'assets/images/mid.png',
      color: const Color.fromARGB(255, 147, 6, 6),
    ),
    ResultsModel(
      title: "Agriculture Forestry Result ",
      url: "https://afuexam.edu.np/results",
      imageAsset: 'assets/images/agr.png',
      color: const Color.fromARGB(255, 147, 6, 6),
    ),
    ResultsModel(
      title: "NOU Result",
      url: "https://nou.edu.np/",
      imageAsset: 'assets/images/nou.png',
      color: const Color.fromARGB(255, 147, 6, 6),
    ),
    ResultsModel(
      title: "Rajarshi Janak University Result",
      url: "https://exam.rju.edu.np/exam_results.php",
      imageAsset: 'assets/images/JANAK.png',
      color: const Color.fromARGB(255, 147, 6, 6),
    ),
    ResultsModel(
      title: "Gandaki University Result",
      url: "https://www.gandakiuniversity.edu.np/",
      imageAsset: 'assets/images/GANDAKI.png',
      color: const Color.fromARGB(255, 147, 6, 6),
    ),
    ResultsModel(
      title: "Madhyanchal Result",
      url: "https://mpu.ac.in/results",
      imageAsset: 'assets/images/man.jpg',
      color: const Color.fromARGB(255, 147, 6, 6),
    ),
    ResultsModel(
      title: "CTEVT Result",
      url: "https://ctevtgandaki.org.np/post/results#",
      imageAsset: 'assets/images/ctv.png',
      color: const Color.fromARGB(255, 147, 6, 6),
    ),
    ResultsModel(
      title: "IPO Result",
      url: "https://iporesult.cdsc.com.np",
      imageAsset: 'assets/images/iporesult.png',
      color: const Color.fromARGB(255, 147, 6, 6),
    ),
    ResultsModel(
      title: "Public Service Commission Result",
      url: "https://psc.gov.np",
      imageAsset: 'assets/images/pscresult.png',
      color: const Color.fromARGB(255, 147, 6, 6),
    ),
  ];
}

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ResultsModel> result = ResultsModel.resultsModel;
    return Scaffold(
      // backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text(
          "Check Your Result",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: GridView.builder(
        itemCount: ResultsModel.resultsModel.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          var data = ResultsModel.resultsModel[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BrowserScreen(
                            url: data.url,
                            title: data.title,
                          )));
              //launchUrl(Uri.parse(data.url));
            },
            child: Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              color: const Color.fromARGB(255, 234, 235, 238),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        result[index].imageAsset,
                        height: 60,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      result[index].title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ).p(10),
    );
  }
}
