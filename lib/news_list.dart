import 'package:flutter/material.dart';

import 'news_card.dart';
import 'news_model.dart';

class NewsListWidget extends StatelessWidget {
  final Stream<List<NewsModel>> stream;
  const NewsListWidget({
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
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return Padding(
                    padding: EdgeInsets.all(15),
                    child: NewsCard(
                      newsModel: snapshot.data![index],
                    ),
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
