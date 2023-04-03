import 'package:flutter/material.dart';
import 'package:kardistry/constants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewYoutubeScreen extends StatelessWidget {
  final String videoId;
  final String title;

  ViewYoutubeScreen({required this.videoId, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Constants.primaryColor.withOpacity(.8),
      ),
      body: WebView(
        initialUrl: '$videoId',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}

