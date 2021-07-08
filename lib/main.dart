import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:news_mih/api.dart';
import 'package:news_mih/news_model.dart';
import 'news_card.dart';
import 'package:http/http.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewsScreen(),
    );
  }
}

class NewsScreen extends StatefulWidget {
  @override
  NewsScreenState createState() => NewsScreenState();
}

class NewsScreenState extends State<NewsScreen> {
  int bottomIndex = 0;
  switchIndex(int i) {
    setState(() {
      bottomIndex = i;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.account_balance_rounded,
          color: Colors.blue,
        ),
        backgroundColor: Colors.white,
        title: Text(
          "News App",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
      body: IndexedStack(
        index: bottomIndex,
        children: [
          FutureBuilder<Response>(
              future: get(Uri.parse(
                  'https://newsapi.org/v2/everything?q=Apple&from=2021-07-08&sortBy=popularity&apiKey=f599cb8706914e578b866c0d0dc58a4f')),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var data = snapshot.data!.body;
                  var dataB = jsonDecode(data);
                  return ListView.builder(
                    itemCount: dataB['articles'].length,
                    itemBuilder: (BuildContext ctx, int index) {
                      return Padding(
                        padding: EdgeInsets.all(15),
                        child: NewsCard(
                          newsModel:
                              NewsModel.fromMap(dataB['articles'][index]),
                        ),
                      );
                    },
                  );
                } else
                  return Center(
                    child: CircularProgressIndicator(),
                  );
              }),
          ListView.builder(
            itemBuilder: (BuildContext ctx, int index) {
              return Padding(
                padding: EdgeInsets.all(15),
                child: NewsCard(
                  newsModel: NewsModel(
                    title: "Saved Article Title $index",
                    details: "mswkjfmqisbjqsmdijcqs",
                    imageUrl:
                        "https://a4.espncdn.com/combiner/i?img=%2Fphoto%2F2021%2F0707%2Fr877295_1296x729_16-9.jpg",
                    url: '',
                  ),
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int i) {
            switchIndex(i);
          },
          currentIndex: bottomIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.save),
              label: "Saved",
            ),
          ]),
    );
  }
}
