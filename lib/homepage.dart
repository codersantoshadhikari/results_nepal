import 'package:flutter/material.dart';
import 'package:resultnepal/models/results_model.dart';
import 'model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Result Nepal",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 11, 0, 0),
            ),
          ),
        ),
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 94, 240, 3),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: Text(
                  "Welcome To Result Nepal",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
                indent: 30,
                endIndent: 30,
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: drawerList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => drawerList[index].screen),
                        );
                      },
                      child: ListTile(
                        leading: Icon(drawerList[index].icon),
                        title: Text(drawerList[index].title),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 83, 88, 148),
        body: GridView.builder(
          itemCount: ResultsModel.resultsModel.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            var data = ResultsModel.resultsModel[index];
            return ReadBox(
              title: data.title,
              url: data.url,
              color: data.color,
              imageAsset: data.imageAsset,
            );
          },
        ),
      ),
    );
  }
}
