import 'package:cursoflutter/data/apiService.dart';
import 'package:cursoflutter/presenter/build_itemlist.dart';
import 'package:flutter/material.dart';

class BuildView extends StatelessWidget {
  final String viewName;
  final int intNews;

  BuildView({@required this.viewName, @required this.intNews});

  @override
  Widget build(BuildContext context) {
    switch (viewName) {
      case 'NewsList':
        return Container(
          child: Center(
            child: Container(
              child: FutureBuilder(
                future: ApiService().GetDio(optionUrl: intNews),
                builder: (context, retornado) {
                  if (retornado.hasData) {
                    return ListView.builder(
                      itemCount: (retornado.data).articlesList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return buildItemList(
                            retornadoData: (retornado.data).articleList[index]);
                      },
                    );
                  } else {
                    return Container();
                  }

                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
          ),
        );
      case 'FavoriteList':
        return Container();
    }
  }
}
