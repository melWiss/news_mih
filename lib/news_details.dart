import 'package:flutter/material.dart';
import 'package:news_mih/db.dart';
import 'package:url_launcher/url_launcher.dart';

import 'news_model.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({Key? key, required this.newsModel}) : super(key: key);
  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    getArticles().then((value) => print(value));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          newsModel.title!,
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.save,
              color: Colors.blue,
            ),
            onPressed: () {
              saveArticle(newsModel);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.delete,
              color: Colors.blue,
            ),
            onPressed: () {
              deleteArticle(newsModel.url!);
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
              child: Image.network(newsModel.imageUrl!),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              newsModel.details!,
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
              launch(newsModel.url!);
            },
          ),
        ],
      ),
    );
  }
}
