import 'package:flutter/material.dart';
import 'package:resultnepal/models/about_screen.dart';
import 'package:resultnepal/models/results_model.dart';
import 'model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const AboutScreen();
                      },
                    ),
                  );
                },
                icon: const Icon(Icons.info))
          ],
          title: const Text(
            "Result Nepal",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 3, 2, 2),
            ),
          ),
        ),
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 91, 215, 8),
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
                        leading: Icon(
                          drawerList[index].icon,
                          color: Colors.black,
                        ),
                        title: Text(
                          drawerList[index].title,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 83, 88, 148),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Choose Category",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: component.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => component[index].screen),
                        );
                      },
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                        color: Colors.white,
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 60,
                              child: Image.asset(
                                component[index].image,
                                height: 160,
                              ),
                            ),
                            Text(
                              component[index].title,
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
            ],
          ),
        ),
      ),
    );
  }
}
