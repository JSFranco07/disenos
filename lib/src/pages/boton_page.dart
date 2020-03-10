import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';

class BotonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),

          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulo(),
                _botonRedondeado(),
              ],
            ),
          )
        ],
      ),
      // bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _fondoApp() {

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ]
        )
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi /4.5,
      child: Container(
        height: 360.0,
        width: 340.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            begin: FractionalOffset(0.5, 1.0),
            end: FractionalOffset(1.0, 0.0),
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ]
          )
        ),
      ),
    );


    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -90.0,
          child: cajaRosa
        ),
      ],
    );
  }

  Widget _titulo() {

    final estiloTitutlo = TextStyle(color: Colors.white,fontSize: 26.0, fontWeight: FontWeight.bold);
    final estiloSubTitulo = TextStyle(color: Colors.white54, fontSize: 16.0);

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Classify transaction', style: estiloTitutlo,),
            SizedBox(height: 10.0,),
            Text('Classify this transaction into a \nparticular category',style: estiloSubTitulo,)
          ],
        ),
      ),
    );
  }

  // Widget _bottomNavigationBar(){
  //   return BottomNavigationBar(
  //     currentIndex: 1,
  //     backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
  //     selectedItemColor: Colors.pinkAccent,
  //     unselectedItemColor: Color.fromRGBO(116, 117, 152, 1.0),
  //     items: [
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.sentiment_satisfied, size: 30.0,),
  //         title: Container(),
  //       ),
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.equalizer, size: 30.0,),
  //         title: Container(),
  //       ),
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.bubble_chart, size: 30.0,),
  //         title: Container(),
  //       ),
  //     ],
  //   );
  // }

  Widget _botonRedondeado() {
    return Table(
      children: [
        TableRow(
          children: [
            _crearTarjeta(Icons.widgets, Colors.blue[400], 'General'),
            _crearTarjeta(Icons.directions_bus, Colors.deepPurple[400], 'Transport'),
          ]
        ),
        TableRow(
          children: [
            _crearTarjeta(Icons.shopping_cart, Colors.pink[400], 'Shopping'),
            _crearTarjeta(Icons.receipt, Colors.orange[400], 'Bills'),
          ]
        ),
        TableRow(
          children: [
            _crearTarjeta(Icons.movie_creation, Colors.indigo[400], 'Entertainment'),
            _crearTarjeta(Icons.fastfood, Colors.green[400], 'Grocery'),
          ]
        ),
        TableRow(
          children: [
            _crearTarjeta(Icons.beach_access, Colors.red[400], 'Vacations'),
            _crearTarjeta(Icons.settings, Colors.brown[400], 'Settings'),
          ]
        ),
      ],
    );
  }

  Widget _crearTarjeta(IconData icono, Color color, String texto) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            height: 180.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: color,
                  radius: 35.0,
                  child: Icon(
                    icono,
                    color: Colors.white,
                    size: 32.0,
                  ),
                ),
                Text(texto, style: TextStyle(color: color),)
              ],
            ),
          ),
        ),
      ),
    );
  }

  //filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),

}
