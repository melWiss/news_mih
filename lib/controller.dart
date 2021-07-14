import 'dart:convert';

import 'package:http/http.dart';
import 'package:news_mih/api.dart';
import 'package:news_mih/db.dart';
import 'package:news_mih/news_model.dart';
import 'dart:async';

class NewsStateController {
  List<NewsModel> _cachedNews = [];
  List<NewsModel> _networkNews = [];

  List<NewsModel> get cachedNews => _cachedNews;
  List<NewsModel> get networkNews => _networkNews;

  StreamController<List<NewsModel>> _cachedNewsController =
      StreamController<List<NewsModel>>();

  StreamController<List<NewsModel>> _networkNewsController =
      StreamController<List<NewsModel>>();

  Stream<List<NewsModel>> get cachedNewsStream => _cachedNewsController.stream;
  Stream<List<NewsModel>> get networkNewsStream =>
      _networkNewsController.stream;

  NewsStateController() {
    getCachedNews();
    getNetworkNews();
  }

  getCachedNews() {
    db.getArticles().then((value) {
      _cachedNews = value;
      _cachedNewsController.sink.add(value);
    });
  }

  saveArticle(NewsModel article) {
    db.saveArticle(article).whenComplete(() => getCachedNews());
  }

  deleteArticle(String url) {
    db.deleteArticle(url).whenComplete(() => getCachedNews());
  }

  bool articleExists(NewsModel article) {
    try {
      var v = cachedNews.firstWhere((element) => element.url == article.url);
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }

  getNetworkNews() {
    get(Uri.parse(
        // 'https://newsapi.org/v2/everything?q=Apple&from=2021-07-08&sortBy=popularity&apiKey=f599cb8706914e578b866c0d0dc58a4f'))
        apiUrl)).then((value) {
      var data = value.body;
      var dataB = jsonDecode(data);
      var articles = List<NewsModel>.generate(
        dataB.length,
        (index) => NewsModel.fromMap(
          dataB[index],
          // dataB['articles'][index],
        ),
      );
      _networkNews = articles;
      _networkNewsController.sink.add(_networkNews);
    });
  }
}

NewsStateController newsStateController = NewsStateController();
