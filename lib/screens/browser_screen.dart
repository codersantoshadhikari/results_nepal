import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BrowserScreen extends StatefulWidget {
  const BrowserScreen({Key? key, required this.url}) : super(key: key);

  final String url;

  @override
  State<BrowserScreen> createState() => _BrowserScreenState();
}

class _BrowserScreenState extends State<BrowserScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: WebViewWidget(
            controller: WebViewController()..loadRequest(Uri.parse(widget.url)),
          ),
        ),
      ),
    );
  }
}
