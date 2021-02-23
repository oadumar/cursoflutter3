import 'package:cursoflutter/model/news.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiService {
  String UrlForApi(optionUrl) {
    switch (optionUrl) {
      case 1: //  About Apple
        return 'http://newsapi.org/v2/everything?q=apple&from=2021-02-21&to=2021-02-21&sortBy=popularity&apiKey=64c32a49e1df4baa8f23a70a562e3c0c';
      case 2: //  About Tesla
        return 'http://newsapi.org/v2/everything?q=tesla&from=2021-01-22&sortBy=publishedAt&apiKey=64c32a49e1df4baa8f23a70a562e3c0c';
      case 3: //  US RightNow
        return 'http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=64c32a49e1df4baa8f23a70a562e3c0c';
      case 4: //  TechCrunch
        return 'http://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=64c32a49e1df4baa8f23a70a562e3c0c';
      case 5: //  WallStreet
        return 'http://newsapi.org/v2/everything?domains=wsj.com&apiKey=64c32a49e1df4baa8f23a70a562e3c0c';
    }
  }

  GetDio({@required int optionUrl}) async {
    var dio = Dio();

    Response response = await dio.get(UrlForApi(optionUrl));

    if (response.statusCode == 200) {
      return NewsApiModel.fromjson(response.data);
    } else {
      print('Error de URL');
    }
  }
}
