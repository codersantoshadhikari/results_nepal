import 'package:flutter/material.dart';
import 'package:resultnepal/models/results_model.dart';
// import 'package:resultnepal/form.dart';
// import 'models/results_model.dart';

class From_model extends StatelessWidget {
  From_model({Key? key}) : super(key: key);

  List<ResultsModel> result = ResultsModel.resultsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Form"),
        ),
        body: Column(
          children: [
            Text(result[4].title),
            Image.asset(result[4].imageAsset),
          ],
        ));
  }
}
