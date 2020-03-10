import 'package:flutter/material.dart';
import 'package:disenos/src/pages/home_page.dart';
import 'package:disenos/src/pages/basico_page.dart';
import 'package:disenos/src/pages/scroll_page.dart';
import 'package:disenos/src/pages/boton_page.dart';
import 'package:disenos/src/pages/social_page.dart';
//import 'package:flutter/services.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //Cambia el color de los iconos de batería y más
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
    //   statusBarColor: Colors.black26
    // ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',

      initialRoute: '/inicio',
      routes: {
        '/inicio' : (BuildContext context) => HomePage(),
        '/basico' : (BuildContext context) => BasicoPage(),
        '/scroll' : (BuildContext context) => ScrollPage(),
        '/boton' : (BuildContext context) => BotonPage(),
        '/social' : (BuildContext context) => SocialPage(),
      },
    );
  }
} 