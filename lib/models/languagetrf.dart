import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:translator/translator.dart';

// ignore: camel_case_types
class language_Screen extends StatefulWidget {
  const language_Screen({super.key});

  // const language_Screen({super.key});

  @override
  State<language_Screen> createState() => _language_ScreenState();
}

// ignore: camel_case_types
class _language_ScreenState extends State<language_Screen> {
  String translateText = "";
  TextEditingController englishController = TextEditingController();
  Map<String, String> country = {
    "Afrikaans": "af",
    "Albanian": "sq",
    "Amharic": "am",
    "Arabic": "ar",
    "Armenian": "hy",
    "Azerbaijani": "az",
    "Basque": "eu",
    "Belarusian": "be",
    "Bengali": "bn",
    "Bosnian": "bs",
    "Bulgarian": "bg",
    "Catalan": "ca",
    "Cebuano": "ceb",
    "Chichewa": "ny",
    "Chinese Simplified": "zh-cn",
    "Chinese Traditional": "zh-tw",
    "Corsican": "co",
    "Croatian": "hr",
    "Czech": "cs",
    "Danish": "da",
    "Dutch": "nl",
    "English": "en",
    "Esperanto": "eo",
    "Estonian": "et",
    "Filipino": "tl",
    "Finnish": "fi",
    "French": "fr",
    "Frisian": "fy",
    "Galician": "gl",
    "Georgian": "ka",
    "German": "de",
    "Greek": "el",
    "Gujarati": "gu",
    "Haitian Creole": "ht",
    "Hausa": "ha",
    "Hawaiian": "haw",
    "Hebrew": "he",
    "Hindi": "hi",
    "Hmong": "hmn",
    "Hungarian": "hu",
    "Icelandic": "is",
    "Igbo": "ig",
    "Indonesian": "id",
    "Irish": "ga",
    "Italian": "it",
    "Japanese": "ja",
    "Javanese": "jv",
    "Kannada": "kn",
    "Kazakh": "kk",
    "Khmer": "km",
    "Kinyarwanda": "rw",
    "Korean": "ko",
    "Kurdish": "ku",
    "Kyrgyz": "ky",
    "Lao": "lo",
    "Latin": "la",
    "Latvian": "lv",
    "Lithuanian": "lt",
    "Luxembourgish": "lb",
    "Macedonian": "mk",
    "Malagasy": "mg",
    "Malay": "ms",
    "Malayalam": "ml",
    "Maltese": "mt",
    "Maori": "mi",
    "Marathi": "mr",
    "Mongolian": "mn",
    "Myanmar (Burmese)": "my",
    "Nepali": "ne",
    "Norwegian": "no",
    "Nyanja (Chichewa)": "ny",
    "Odia (Oriya)": "or",
    "Pashto": "ps",
    "Persian": "fa",
    "Polish": "pl",
    "Portuguese (Portugal, Brazil)": "pt",
    "Punjabi": "pa",
    "Romanian": "ro",
    "Russian": "ru",
    "Samoan": "sm",
    "Scots Gaelic": "gd",
    "Serbian": "sr",
    "Sesotho": "st",
    "Shona": "sn",
  };

  String dropdownValueForTranslateFrom = "English";
  String dropdownValueForTranslateTo = "Nepali";

// Translate code
  void translate(String tto, String tfrom) async {
    final translator = GoogleTranslator();

    final input = englishController.text;

    translator.translate(input, from: tfrom, to: tto).then((value) {
      setState(() {
        translateText = value.toString();
      });
    });
    await Clipboard.setData(ClipboardData(text: translateText));
  }

// End the translate code

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 199, 200, 201),
      appBar: AppBar(
        title: const Text("Translate App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("From"),
                    // Create DropDown
                    SizedBox(
                      width: 120,
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: dropdownValueForTranslateFrom,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            dropdownValueForTranslateFrom = value!;
                          });
                        },
                        items: country.keys
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    const Text("To"),
                    SizedBox(
                      width: 140,
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: dropdownValueForTranslateTo,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            dropdownValueForTranslateTo = value!;
                          });
                        },
                        items: country.keys
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
                TextFormField(
                  controller: englishController,
                  maxLines: 6,
                  decoration: InputDecoration(
                      hintText: "Enter $dropdownValueForTranslateFrom Text",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
                MaterialButton(
                    color: const Color.fromARGB(255, 103, 40, 145),
                    onPressed: () {
                      String to = country[dropdownValueForTranslateTo]!;
                      String from = country[dropdownValueForTranslateFrom]!;
                      translate(to, from);
                    },
                    child: const Text(
                      "Translate ",
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    )),
                Text(
                  translateText,
                  style: const TextStyle(fontSize: 25),
                ),
                translateText == ""
                    ? const Text("")
                    : ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 103, 40, 145),
                          ),
                        ),
                        onPressed: () {
                          Clipboard.setData(ClipboardData(text: translateText));
                        },
                        child: const Text("Copy Text")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
