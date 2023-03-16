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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Browser Screen'),
      ),
      body: WebViewWidget(
        controller: WebViewController()..loadRequest(Uri.parse(widget.url)),
      ),
    );
  }
}
