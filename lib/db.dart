import 'dart:convert';
import 'dart:io';

import 'package:news_mih/news_model.dart';
import 'package:path_provider/path_provider.dart';

class NewsDB {
  Future<List<NewsModel>> getArticles() async {
    var dbDir = await getApplicationDocumentsDirectory();
    var dbPath = dbDir.path + "/db.json";
    var dbFile = File(dbPath);
    if (!dbFile.existsSync()) {
      dbFile.createSync();
      dbFile.writeAsStringSync(jsonEncode([]));
    }
    var dbData = dbFile.readAsStringSync();
    List dbList = jsonDecode(dbData);
    List<NewsModel> dbNewsModel = [];
    dbList.forEach((element) {
      dbNewsModel.add(NewsModel.fromMap(element));
    });
    return dbNewsModel;
  }

  Future<bool> deleteArticle(String url) async {
    var dbDir = await getApplicationDocumentsDirectory();
    var dbPath = dbDir.path + "/db.json";
    var dbFile = File(dbPath);
    if (!dbFile.existsSync()) {
      dbFile.createSync();
      dbFile.writeAsStringSync(jsonEncode([]));
      return true;
    }
    var dbData = dbFile.readAsStringSync();
    List dbList = jsonDecode(dbData);
    bool verif = false;
    dbList.removeWhere((element) {
      if (element['url'] == url) {
        verif = true;
        return true;
      }
      return false;
    });
    if (verif) dbFile.writeAsStringSync(jsonEncode(dbList));
    return verif;
  }

  Future saveArticle(NewsModel article) async {
    var dbDir = await getApplicationDocumentsDirectory();
    var dbPath = dbDir.path + "/db.json";
    var dbFile = File(dbPath);
    if (!dbFile.existsSync()) {
      dbFile.createSync();
      dbFile.writeAsStringSync(jsonEncode([]));
    }
    var dbData = dbFile.readAsStringSync();
    List dbList = jsonDecode(dbData);
    var exist = false;
    try {
      dbList.firstWhere((element) {
        if (element['url'] == article.url) {
          exist = true;
          return true;
        }
        return false;
      });
    } catch (e) {
      if (!exist) {
        dbList.add(article.toMap());
        dbFile.writeAsStringSync(jsonEncode(dbList));
      }
    }
  }
}

NewsDB db = NewsDB();
