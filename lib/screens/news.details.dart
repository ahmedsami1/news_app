import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../constants.dart';

class NewsDetails extends StatefulWidget {
  NewsDetails( {super.key, required this.article});
  ArticleModel article;

  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  late WebViewController controller;
  @override
  void initState() {
    super.initState();

    controller = WebViewController()..loadRequest(
      Uri.parse(widget.article.url),);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title:  const Text(
          'News Details',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
