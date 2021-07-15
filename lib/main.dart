import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:news_mih/api.dart';
import 'package:news_mih/controller.dart';
import 'package:news_mih/db.dart';
import 'package:news_mih/news_model.dart';
import 'package:news_mih/news_pages.dart';
import 'news_card.dart';
import 'package:http/http.dart';

import 'news_list.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Color(0xFF262626),
        unselectedWidgetColor: Colors.white30,
        iconTheme: IconThemeData(color: Colors.white),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
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
        backgroundColor:
            bottomIndex == 0 ? Colors.transparent : Color(0xFF292929),
        centerTitle: true,
        elevation: bottomIndex * 2,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.account_balance_rounded,
                color: Colors.blue,
              ),
            ),
            Text(
              "News App",
              style: TextStyle(
                color: Colors.blue,
                fontSize: Theme.of(context).textTheme.headline6!.fontSize,
              ),
            ),
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
      body: IndexedStack(
        index: bottomIndex,
        children: [
          NewsPagesWidget(
            stream: newsStateController.networkArticlesStream,
          ),
          NewsListWidget(
            stream: newsStateController.cachedArticlesStream,
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
