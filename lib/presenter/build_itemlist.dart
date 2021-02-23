import 'package:cursoflutter/model/news.dart';
import 'package:cursoflutter/view/widgets/news_card.dart';
import 'package:flutter/material.dart';

class buildItemList extends StatelessWidget {
  final News retornadoData;

  buildItemList({Key key, @required this.retornadoData});

  @override
  Widget build(BuildContext context) {
    return NewsCard(
      news: retornadoData,
    );
  }
}
