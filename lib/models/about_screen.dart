import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result Nepal Application About'),
        backgroundColor: const Color.fromARGB(255, 77, 7, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Center(child: _buildSectionTitle('All Results Check')),
              const SizedBox(height: 16),
              Center(child: _buildSectionTitle('Apply form')),
              const SizedBox(height: 16),
              Center(child: _buildSectionTitle('Entertainment Vidoes')),
              const SizedBox(height: 16),
              Center(child: _buildSectionTitle('Internet speed check')),
              const SizedBox(height: 70),
              Center(child: _buildSectionTitle('Developer About:')),
              const SizedBox(height: 10),
              Center(child: _buildListTile('SANTOSH ADHIKARI')),
              Center(child: _buildListTile('Address Pokhara, Nepal')),
              Center(child: _buildListTile('GitHub ID: Santoshadhikary')),
              Center(
                  child: _buildListTile('Website : santoshadhikari.name.np')),
              Center(
                  child: _buildListTile(
                      'Email Id : adhikarisantosh039@gmail.com')),
              const SizedBox(height: 60),
              const Center(
                child: Text(
                  'Thank you for using this application!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.indigo,
      ),
    );
  }

  Widget _buildListTile(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        '• $title',
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 15, 6),
        ),
      ),
    );
  }
}
