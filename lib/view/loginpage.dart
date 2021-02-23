import 'package:cursoflutter/utils/resize.dart';
import 'package:cursoflutter/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/img/backbit.jpeg'),
                colorFilter:
                    ColorFilter.mode(Colors.white, BlendMode.softLight),
              )),
            ),
            Container(
              padding: EdgeInsets.only(
                top: resV(medV: _height, size: 30),
                left: resH(medH: _width, size: 15),
                right: resH(medH: _width, size: 15),
              ),
              height: _height / 8 * 5,
              width: _width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Column(
                //  Para alineación a izquierda
                crossAxisAlignment: CrossAxisAlignment.start,

                //  Arreglo de hijos dependientes del child Column
                children: [
                  //  Widget texto
                  Text(
                    "Wellcome to",
                    style: GoogleFonts.signika(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: resH(medH: _width, size: 15),
                    ),
                  ),

                  //  Widget imagen
                  Image.asset(
                    'assets/img/logobit.png',
                    width: resH(medH: _width, size: 157),
                    height: resV(medV: _height, size: 55),
                    fit: BoxFit.contain,
                  ),

                  //  Widget texto
                  Text(
                    'Please login to continue',
                    style: GoogleFonts.signika(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: resH(medH: _width, size: 15),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Probando 1',
                      //  Forma 1 de dar estilo al texto desde una libreria
                      //  EstTex es la clase y estTex es el metodo
                      style: EstTex.estTex,
                    ),
                  ),

                  Align(
                    alignment: Alignment.center,
                    child: ColoredBox(
                      color: Colors.blue,
                      child: Text(
                        'Probando 2',
                        style: EstTex.estTex,
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.black12,
                    width: _width,
                    child: Text(
                      'Probando 3',
                      style: EstTex.estTex,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
