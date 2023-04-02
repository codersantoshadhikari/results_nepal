import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    void launchEmailApp(BuildContext context, String email) async {
      final Uri emailLaunchUri = Uri(
        scheme: 'mailto',
        path: email,
      );
      await launchUrl(Uri.parse(emailLaunchUri.toString()));
    }

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade800,
              Colors.blue.shade600,
              Colors.blue.shade400,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(0.1),
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextField(),
                const SizedBox(height: 10),
                const Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextField(),
                const SizedBox(height: 10),
                const Text(
                  'Subject',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextField(),
                const SizedBox(height: 10),
                const Text(
                  'Message..',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextField(),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    launchEmailApp(
                      context,
                      'adhikarisantosh039@gmail.com',
                    );
                  },
                  child: const Text(
                    'Send message',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
