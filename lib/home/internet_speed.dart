import 'package:flutter/material.dart';
import 'package:resultnepal/models/results_model.dart';
import '../screens/browser_screen.dart';

List<ResultsModel> resultsModel = [
  ResultsModel(
    title: "Fast",
    imageAsset: 'assets/images/speed.png',
    url: "https://fast.com/",
    color: const Color.fromARGB(255, 176, 7, 7),
  ),
  ResultsModel(
    title: "Speed ",
    url: "https://www.speedtest.net/",
    imageAsset: 'assets/images/111.png',
    color: const Color.fromARGB(255, 56, 34, 3),
  ),
  ResultsModel(
    title: "Testmy",
    url: "https://testmy.net/results",
    imageAsset: 'assets/images/fast.png',
    color: const Color.fromARGB(255, 56, 34, 3),
  ),
  ResultsModel(
    title: "Speedof",
    url: "https://speedof.me/",
    imageAsset: 'assets/images/112.jpg',
    color: const Color.fromARGB(255, 56, 34, 3),
  ),
];

class InternetScreen extends StatelessWidget {
  const InternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: const Color.fromARGB(255, 4, 4, 85),
        appBar: AppBar(
          title: const Text(
            "Check Your Internet Speed",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          // backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
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
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => BrowserScreen(
                        url: resultsModel[index].url,
                        title: resultsModel[index].title,
                      ),
                    ),
                  );
                },
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  // color: const Color.fromARGB(255, 91, 44, 145),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        resultsModel[index].imageAsset,
                        height: 100,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        resultsModel[index].title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 7, 0, 0),
                          fontSize: 15,
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
