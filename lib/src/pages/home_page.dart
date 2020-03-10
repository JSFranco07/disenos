import 'package:disenos/src/pages/basico_page.dart';
import 'package:disenos/src/pages/boton_page.dart';
import 'package:disenos/src/pages/scroll_page.dart';
import 'package:disenos/src/pages/social_page.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //Conocer la posicion actual en la barra de navegación
  int tabActual = 3;

  //Controla que se muestra en la aplicación
  var pages = [
    BasicoPage(),
    ScrollPage(),
    BotonPage(),
    SocialPage(),
  ];

  //Cambiar el estado de la posición actual
  void _select(int i){
    setState(() {
      tabActual = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[tabActual],
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _bottomNavigationBar(){
    return BottomNavigationBar(
      currentIndex: tabActual,
      type: BottomNavigationBarType.fixed,
      backgroundColor: _asignarColorBarra(),
      selectedItemColor: _asignarColorNoSeleccionado(),
      unselectedItemColor: _asignarColorIcono(),
      onTap: _select,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.sentiment_satisfied, size: 30.0,),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.equalizer, size: 30.0,),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bubble_chart, size: 30.0,),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star, size: 30.0,),
          title: Container(),
        ),
      ],
    );
  }

  Color _asignarColorBarra(){
    if (tabActual==0) {
      return Colors.white70;  
    } else if(tabActual==1){
      return Color.fromRGBO(108, 192, 218, 1.0);
    } else if(tabActual==2){
      return Color.fromRGBO(55, 57, 84, 1.0);
    } else{
      return Colors.white;
    }
  }

  Color _asignarColorIcono(){
    if (tabActual==0) {
      return Color.fromRGBO(116, 117, 152, 1.0);  
    } else if(tabActual==1){
      return Colors.white;
    } else if(tabActual==2){
      return Color.fromRGBO(116, 117, 152, 1.0);
    } else{
      return Color.fromRGBO(116, 117, 152, 1.0);
    }
  }

  Color _asignarColorNoSeleccionado(){
    if (tabActual==0) {
      return Colors.blue;  
    } else if(tabActual==1){
      return Color.fromRGBO(135, 236, 202, 1.0);
    } else if(tabActual==2){
      return Colors.pinkAccent;
    } else{
      return Colors.pinkAccent;
    }
  }
}