import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';
import 'package:news_mih/db.dart';
import 'package:news_mih/news_model.dart';

class NewsStateController {
  List<NewsModel> _cachedArticles = [];
  List<NewsModel> _networkArticles = [];

  List<NewsModel> get cachedArticles => _cachedArticles;
  List<NewsModel> get networkArticles => _networkArticles;

  StreamController<List<NewsModel>> _cachedArticlesController =
      StreamController<List<NewsModel>>();
  StreamController<List<NewsModel>> _networkArticlesController =
      StreamController<List<NewsModel>>();

  Stream<List<NewsModel>> get cachedArticlesStream =>
      _cachedArticlesController.stream;
  Stream<List<NewsModel>> get networkArticlesStream =>
      _networkArticlesController.stream;

  getCachedArticles() {
    db.getArticles().then((value) {
      _cachedArticles = value;
      _cachedArticlesController.sink.add(value);
    });
  }

  saveArticle(NewsModel article) {
    db.saveArticle(article).then((value) => getCachedArticles());
  }

  deleteArticle(String url) {
    db.deleteArticle(url).then((value) => getCachedArticles());
  }

  getNetworkArticles() {
    get(Uri.parse(
            'https://newsapi.org/v2/everything?q=Apple&from=2021-07-08&sortBy=popularity&apiKey=f599cb8706914e578b866c0d0dc58a4f'))
        .then(
      (value) {
        var data = value.body;
        var dataB = jsonDecode(data);
        var newsl = List<NewsModel>.generate(
          dataB['articles'].length,
          (index) => NewsModel.fromMap(dataB['articles'][index]),
        );
        _networkArticles = newsl;
        _networkArticlesController.sink.add(_networkArticles);
      },
    );
  }

  bool checkArticleExistence(String url) {
    try {
      var v = _cachedArticles.firstWhere((element) => element.url == url);
      return true;
    } catch (e) {
      print(e.toString);
      return false;
    }
  }

  NewsStateController() {
    getCachedArticles();
    getNetworkArticles();
  }
}

NewsStateController newsStateController = NewsStateController();
