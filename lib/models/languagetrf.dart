import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  // final translator = GoogleTranslator();
  final TextEditingController englishController = TextEditingController();
  String translatedText = "";

  final Map<String, String> languages = {
    "Afrikaans": "af",
    // ... (other languages)
    "Yiddish": "yi",
    "Yoruba": "yo",
    "Zulu": "zu"
  };

  String dropdownValueForTranslateFrom = "English";
  String dropdownValueForTranslateTo = "Nepali";

  // Future<void> translate(String to, String from) async {
  //   var translation = await translator.translate(
  //     englishController.text,
  //     from: from,
  //     to: to,
  //   );

  //   setState(() {
  //     translatedText = translation.text;
  //   });

  //   // Optionally copy the translated text to the clipboard.
  //   Clipboard.setData(ClipboardData(text: translatedText));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Translate App"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("From:"),
                DropdownButton<String>(
                  value: dropdownValueForTranslateFrom,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValueForTranslateFrom = newValue!;
                    });
                  },
                  items: languages.keys
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                const Text("To:"),
                DropdownButton<String>(
                  value: dropdownValueForTranslateTo,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValueForTranslateTo = newValue!;
                    });
                  },
                  items: languages.keys
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            TextFormField(
              controller: englishController,
              maxLines: 6,
              decoration: InputDecoration(
                hintText: "Enter text in $dropdownValueForTranslateFrom",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     String to = languages[dropdownValueForTranslateTo]!;
            //     String from = languages[dropdownValueForTranslateFrom]!;
            //     // translate(to, from);z
            //   },
            //   child: const Text("Translate"),
            // ),
            SelectableText(
              translatedText,
              style: const TextStyle(fontSize: 16),
            ),
            if (translatedText.isNotEmpty)
              ElevatedButton(
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: translatedText));
                },
                child: const Text("Copy Translated Text"),
              ),
          ],
        ),
      ),
    );
  }
}
