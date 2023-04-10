import 'package:flutter/material.dart';
import 'package:resultnepal/models/about_screen.dart';
import 'package:velocity_x/velocity_x.dart';
import 'model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Result Nepal",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 245, 246, 244),
          ),
        ),
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
            icon: const Icon(Icons.info,
                color: Color.fromARGB(255, 215, 208, 208)),
          )
        ],
        elevation: 0,
        backgroundColor: const Color.fromARGB(0, 29, 6, 112),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 227, 231, 231),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.33,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 55, 14, 150),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      maxRadius: 50,
                      child: Image.asset("assets/images/logo.png"),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    "Welcome To Result Nepal"
                        .text
                        .size(23)
                        .center
                        .color(const Color.fromARGB(255, 242, 207, 207))
                        .bold
                        .make(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.67,
              child: ListView.builder(
                itemCount: drawerList.length,
                shrinkWrap: true,
                reverse: false,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => drawerList[index].screen,
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Image.asset(
                        drawerList[index].icon,
                        height: 25,
                        width: 50,
                        // color: Color.fromARGB(255, 254, 252, 252),
                      ),
                      title: Text(
                        drawerList[index].title,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 36, 36, 126),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Choose Category",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            const SizedBox(height: 10),
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
                          builder: (context) => component[index].screen,
                        ),
                      );
                    },
                    child: Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(9),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              child: Image.asset(
                                component[index].image,
                                height: 100,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Text(
                              component[index].title,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
