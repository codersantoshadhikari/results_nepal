import 'package:flutter/material.dart';
import '../screens/browser_screen.dart';

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
      title: "Gorkha Patra",
      url: "https://gorkhapatraonline.com/",
      imageAsset: 'assets/images/gorkha.png',
      color: const Color.fromARGB(255, 255, 69, 0),
    ),
    ResultsModel(
      title: "Kantipur News",
      url: "https://ekantipur.com/",
      imageAsset: 'assets/images/kantupur.png',
      color: const Color.fromARGB(255, 205, 32, 31),
    ),
    ResultsModel(
      title: "Ratopati News",
      url: "https://www.ratopati.com/",
      imageAsset: 'assets/images/ra.png',
      color: const Color.fromARGB(255, 205, 32, 31),
    ),
    ResultsModel(
      title: "Annapurnapost ",
      url: "https://annapurnapost.com/",
      imageAsset: 'assets/images/anupa.png',
      color: const Color.fromARGB(255, 205, 32, 31),
    ),
    ResultsModel(
      title: "Setopati News",
      url: "https://www.setopati.com/",
      imageAsset: 'assets/images/seto.png',
      color: const Color.fromARGB(255, 205, 32, 31),
    ),
    ResultsModel(
      title: "news24nepal ",
      url: "https://www.news24nepal.tv/",
      imageAsset: 'assets/images/news24.png',
      color: const Color.fromARGB(255, 205, 32, 31),
    ),
    ResultsModel(
      title: "Tech Pana ",
      url: "https://www.techpana.com/",
      imageAsset: 'assets/images/tech.png',
      color: const Color.fromARGB(255, 205, 32, 31),
    ),
  ];
}

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ResultsModel> result = ResultsModel.resultsModel;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 41, 14, 141),
        appBar: AppBar(
          title: const Text("Nepali News"),
          backgroundColor: const Color.fromARGB(255, 12, 9, 37),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            itemCount: result.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // launchUrlString(result[index].url);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BrowserScreen(
                                url: result[index].url,
                                title: result[index].title,
                              )));
                },
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  color: const Color.fromARGB(255, 156, 158, 165),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        result[index].imageAsset,
                        height: 100,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        result[index].title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
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
