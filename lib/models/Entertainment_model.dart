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
      title: "TikTok Videos",
      url: "https://www.tiktok.com",
      imageAsset: 'assets/images/tiktok.png',
      color: const Color.fromARGB(255, 255, 69, 0),
    ),
    ResultsModel(
      title: "likee Videos",
      url: "https://likee.video/@funny_videos107/?lang=en",
      imageAsset: 'assets/images/like.png',
      color: const Color.fromARGB(255, 255, 69, 0),
    ),
    ResultsModel(
      title: "Sharechat Videos",
      url: "https://sharechat.com/video/JpjWl58?referrer=url",
      imageAsset: 'assets/images/sabu.png',
      color: const Color.fromARGB(255, 255, 69, 0),
    ),
    ResultsModel(
      title: "Enjoy  Moment",
      url: "https://mojapp.in/",
      imageAsset: 'assets/images/moj.png',
      color: const Color.fromARGB(255, 255, 69, 0),
    ),
    ResultsModel(
      title: "Sharechat Videos",
      url: "https://utreon.com/",
      imageAsset: 'assets/images/poud.png',
      color: const Color.fromARGB(255, 255, 69, 0),
    ),
    ResultsModel(
      title: "YouTube Videos",
      url: "https://www.youtube.com/",
      imageAsset: 'assets/images/youtube.png',
      color: const Color.fromARGB(255, 205, 32, 31),
    ),
  ];
}

class VidoesScreen extends StatelessWidget {
  const VidoesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ResultsModel> result = ResultsModel.resultsModel;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 41, 14, 141),
      appBar: AppBar(
        title: const Text("Entertainment Videos"),
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: result.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => BrowserScreen(
                      url: result[index].url,
                      title: result[index].title,
                    ),
                  ),
                );
              },
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: const Color.fromARGB(255, 87, 85, 189),
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
                        color: Colors.white,
                      ),
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
