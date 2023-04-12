import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Application About'),
        backgroundColor: const Color.fromARGB(255, 77, 7, 255),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 131, 131, 240),
              Color.fromARGB(255, 255, 255, 255),
            ],
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Center(
                child: _buildSectionTitle(
              'English To Nepali date Converter',
            )),
            const SizedBox(height: 12),
            Center(child: _buildSectionTitle('Apply All Category From')),
            const SizedBox(height: 12),
            Center(child: _buildSectionTitle('Entertainment Videos')),
            const SizedBox(height: 16),
            Center(child: _buildSectionTitle('Internet speed check')),
            const SizedBox(height: 16),
            Center(child: _buildSectionTitle('Language Translator')),
            const SizedBox(height: 16),
            Center(child: _buildSectionTitle('All Results Check')),
            const SizedBox(height: 16),
            Center(child: _buildSectionTitle('Nepali News')),
            const SizedBox(height: 30),
            Center(child: _buildSectionTitle('Developer About:')),
            const SizedBox(height: 10),
            Center(child: _buildListTile('SANTOSH ADHIKARI')),
            Center(child: _buildListTile('Address Pokhara, Nepal')),
            Center(child: _buildListTile('GitHub ID: Santoshadhikary')),
            Center(child: _buildListTile('Website : santoshadhikari.name.np')),
            Center(
                child:
                    _buildListTile('Email Id : adhikarisantosh039@gmail.com')),
            const SizedBox(height: 5),
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
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
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
