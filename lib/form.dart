import 'package:flutter/material.dart';
import 'package:resultnepal/models/results_model.dart';

// import 'models/results_model.dart';

class FromScreen extends StatelessWidget {
  FromScreen({Key? key}) : super(key: key);

  List<ResultsModel> result = ResultsModel.resultsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Form"),
        ),
        body: Column(
          children: [
            Text(result[6].title),
            Image.asset(result[6].imageAsset),
          ],
        ));
  }
}
