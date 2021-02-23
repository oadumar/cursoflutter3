import 'package:cursoflutter/data/news_repository.dart';
import 'package:cursoflutter/utils/styles.dart';
import 'package:cursoflutter/view/widgets/news_card.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black38,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'BIT News',
          style: TextStyle(
            color: Colors.black38,
            fontSize: 18,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.favorite,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white54,

                /* Opcion para insertar imagen local*/
                child: Image.asset(
                  'assets/img/icp.png',
                ), /* Fin opción para insertar imagen local*/
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                ' > All articles mentioning Apple from yesterday, sorted by popular publishers first.',
                style: EstTex.draOpt,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                ' > All articles about Tesla from the last month, sorted by recent first.',
                style: EstTex.draOpt,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                ' > Top business headlines in the US right now.',
                style: EstTex.draOpt,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                ' > Top headlines from TechCrunch right now.',
                style: EstTex.draOpt,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                ' > All articles published by the Wall Street Journal in the last 6 months, sorted by recent first.',
                style: EstTex.draOpt,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: NewsRepository()
            .lNews
            .map((news) => NewsCard(
                  news: news,
                ))
            .toList(),
      ),
    );
  }
}

/*  Opción para traer imgen de internet
    Se ubica como child de DrawerHeader
                Image.network(
                  'https://bit.institute/images/Instituto-Cursos-Programacion.png',
                ),
                Fin opción para traer imgen de internet  */
