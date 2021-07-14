import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:news_mih/api.dart';
import 'package:news_mih/controller.dart';
import 'package:news_mih/db.dart';
import 'package:news_mih/news_model.dart';
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
          NewsListWidget(stream: newsStateController.networkNewsStream),
          NewsListWidget(stream: newsStateController.cachedNewsStream),
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
