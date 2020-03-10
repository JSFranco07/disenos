import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 15.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //Imagen
            _crearImagen(),

            //Sección de texto e iconos
            _crearTitulo(),
            
            //Sección de botones
            _crearBoton(),

            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),

            SizedBox(height: 40.0,)
          ],
        ),
      )
    );
  }

  Widget _crearImagen(){
    return Container(
      width: double.infinity,
      height: 300.0,
      child: Image(
        image: NetworkImage('https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixlib=rb-1.2.1&w=1000&q=80'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          children: <Widget>[
            
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Lago cristalino', style: estiloTitulo,),
                  SizedBox(height: 7.0,),
                  Text('Colombia', style: estiloSubTitulo,)
                ],
              ),
            ),

            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),

            Text('41', style: TextStyle(fontSize: 20.0),)
          ],
        ),
      ),
    );
  }

  Widget _crearBoton(){
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _crearIcono(Icons.call, 'CALL'),
          _crearIcono(Icons.near_me, 'ROUTE'),
          _crearIcono(Icons.share, 'SHARE'),
        ],
      ),
    );
  }

  Widget _crearIcono(IconData icono, String texto){
      return Column(
        children: <Widget>[
          Icon(
            icono,
            color: Colors.blue,
            size: 30.0,
          ),

          SizedBox(height: 4.0),

          Text(
            texto, 
            style: TextStyle(color: Colors.blue, fontSize: 13.0),
          )
        ],
      );
    }

  Widget _crearTexto(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Text(
          'Carry on my wayward son For therell be peace when you are done Lay your weary head to rest Dont you cry no more.\nOnce I rose above the noise and confusion Just to get a glimpse beyond the illusion I was soaring ever higher, but I flew too high Though my eyes could see I still was a blind man Though my mind could think I still was a mad man I hear the voices when Im dreamin, I can hear them say',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}