import 'package:flutter/material.dart';
import 'package:news_mih/controller.dart';
import 'package:url_launcher/url_launcher.dart';

import 'news_card.dart';
import 'news_details.dart';
import 'news_model.dart';

class NewsPagesWidget extends StatelessWidget {
  final Stream<List<NewsModel>> stream;
  const NewsPagesWidget({
    Key? key,
    required this.stream,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<NewsModel>>(
        stream: stream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.length != 0)
              return PageView.builder(
                itemCount: snapshot.data!.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext ctx, int index) {
                  return ArticlePage(
                    newsModel: snapshot.data![index],
                  );
                },
              );
            else
              return Center(
                child: Text("There's not article for the moment."),
              );
          } else
            return Center(
              child: CircularProgressIndicator(),
            );
        });
  }
}

class ArticlePage extends StatelessWidget {
  final NewsModel newsModel;
  ArticlePage({
    required this.newsModel,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launch(newsModel.url!);
      },
      onDoubleTap: () {
        if (!newsStateController.checkArticleExistence(newsModel.url!)) {
          newsStateController.saveArticle(newsModel);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Article saved to read later."),
            ),
          );
        }
      },
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            newsModel.imageUrl!,
            fit: BoxFit.fitHeight,
          ),
          Container(
            color: Colors.black87,
          ),
          Positioned(
            bottom: 5,
            left: 5,
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .9,
                  child: Text(
                    newsModel.title!,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.headline4!.fontSize,
                      color: Colors.pink,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 15,
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Text(newsModel.details!),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
