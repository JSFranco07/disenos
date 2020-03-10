import 'package:flutter/material.dart';
import 'dart:ui';

class SocialPage extends StatefulWidget {
  @override
  _SocialPageState createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _crearImagen(),
              _descripcion(),
              //_tarjetas(),
              _prueba(),
            ],
          )
        ),
      );
  }

  Widget _crearImagen(){

    final imagen = Image(
        image: AssetImage('assets/joan.jpg'),
        fit: BoxFit.cover,
        width: double.infinity,
    );

    final titulo = Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      child: Column(
        children: <Widget>[
          Expanded(child: Container()),
          _textoTitulo(),
        ],
      ),
    );

    return Container(
      height: 490,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          imagen,
          SafeArea(child: titulo),
        ],
      ),
    );
  }

  Widget _textoTitulo(){
    final estiloTitulo = TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold);
    final estiloSubTitulo = TextStyle(color: Colors.white, fontSize: 15.0);
    final Map<int, TableColumnWidth> anchoColumna = {
      0 : FlexColumnWidth(2.0),
      1 : FlexColumnWidth(1.2),
    };
    return Table(
      //border: TableBorder.all(),
      defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
      columnWidths: anchoColumna,
      children: [
        TableRow(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Joan Franco', style: estiloTitulo),
                SizedBox(height: 5.0,),
                Text('@JoanFranco', style: estiloSubTitulo),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                RaisedButton(
                shape: StadiumBorder(),
                color: Colors.blue,
                onPressed: (){},
                child: Text('Follow', style: TextStyle(color: Colors.white),),
                ),
              ], 
            ),
          ]
        )
      ],
    );
  }

  Widget _descripcion(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 25.0),
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Text(
            'Carry on my wayward son For therell be peace when you are done ' 
            'Lay your weary head to rest Dont you cry no more Once I rose above ' 
            'the noise and confusion Just to get a glimpse beyond the illusion '
            'I was soaring ever higher, but I flew too high Though my eyes could '
            'see I still was a blind man Though my mind could think I still was a '
            'mad man I hear the voices when Im dreamin, I can hear them say',
            textAlign: TextAlign.justify
          ),
          SizedBox(height: 25.0,),
          Divider(thickness: 1.0),
        ],
      )
    );
  }

  Widget _prueba(){
    return Container(
      margin: EdgeInsets.only(left: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.favorite),
              SizedBox(width: 10.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('20 friends'),
                  Text('following this'),
                ],
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 15.0),
                  width: double.infinity,
                  height: 56.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    children: <Widget>[
                      _crearTarjeta(),
                      _crearTarjeta(),
                      _crearTarjeta(),
                      _crearTarjeta(),
                      _crearTarjeta(),
                      _crearTarjeta(),
                      _crearTarjeta(),
                      _crearTarjeta(),
                      _crearTarjeta(),
                      _crearTarjeta(),
                      _crearTarjeta(),
                      _crearTarjeta(),
                      _crearTarjeta(),
                      _crearTarjeta(),
                      _crearTarjeta(),
                      _crearTarjeta(),
                      _crearTarjeta(),
                      _crearTarjeta(),
                    ],
                  )
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _crearTarjeta() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/amor.jpg'),
              radius: 27.0,
            ),
            SizedBox(width: 15.0,)
          ], 
        ),
      ],
    );
  }
}