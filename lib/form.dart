import 'package:flutter/material.dart';
import 'package:resultnepal/models/results_model.dart';

class From_model extends StatelessWidget {
  From_model({Key? key}) : super(key: key);

  List<ResultsModel> result = ResultsModel.resultsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Result Nepal App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(11.0),
          child: Column(
            children: [
              Center(child: Text(result[1].title)),
              Image.asset(result[1].imageAsset),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(result[2].title),
              ),
            ],
          ),
        ));
  }
}
