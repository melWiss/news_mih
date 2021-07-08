import 'package:flutter/material.dart';
import 'package:news_mih/news_model.dart';

import 'news_details.dart';

class NewsCard extends StatelessWidget {
  final NewsModel newsModel;
  NewsCard({
    required this.newsModel,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => NewsDetails(newsModel: newsModel),
          ),
        );
      },
      child: Material(
        elevation: 4,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.network(newsModel.imageUrl!),
                Positioned(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      color: Colors.pink,
                      child: Text(
                        newsModel.title!,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  bottom: 5,
                  left: 5,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                newsModel.details!,
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
