import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:newsm/Model/news_model.dart';
import 'dart:io';
import 'dart:convert';
class Services {
Future<List<Article>> getData(String category) async {
    List<Article> list;
    String link;
    if (category == "top_news") {
      link =
          "https://newsapi.org/v2/top-headlines?country=in&apiKey=40c1b3095c75473dbab068a5afc9dfb1";
    } else {
       link =
           "https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=ae6c3c0f9d8e485a98fd70edcff81134";
    }
    var res = await http
        .get(Uri.encodeFull(link), headers: {"Accept": "application/json"});
    // print(res.body);
    if (res.statusCode == 200) {
      var data = json.decode(res.body);
      var rest = data["articles"] as List;
      print(rest);
      list = rest.map<Article>((json) => Article.fromJson(json)).toList();
    }
    print("List Size: ${list.length}");
    return list;
}

}