import 'package:flutter/material.dart';
import 'package:news_mih/controller.dart';
import 'package:news_mih/db.dart';
import 'package:url_launcher/url_launcher.dart';

import 'news_model.dart';

class NewsDetails extends StatefulWidget {
  const NewsDetails({Key? key, required this.newsModel}) : super(key: key);
  final NewsModel newsModel;

  @override
  _NewsDetailsState createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          widget.newsModel.title!,
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              newsStateController.articleExists(widget.newsModel)
                  ? Icons.delete
                  : Icons.save,
              color: Colors.blue,
            ),
            onPressed: () {
              if (!newsStateController.articleExists(widget.newsModel)) {
                newsStateController.saveArticle(widget.newsModel);
                setState(() {});
              } else {
                newsStateController.deleteArticle(widget.newsModel.url!);
                Navigator.of(context).pop();
              }
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Image.network(widget.newsModel.imageUrl!),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.newsModel.details!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          TextButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.pink,
                ),
                Text(
                  'Read the article',
                  style: TextStyle(
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
            onPressed: () {
              launch(widget.newsModel.url!);
            },
          ),
        ],
      ),
    );
  }
}
