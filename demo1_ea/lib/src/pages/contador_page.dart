import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget {
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {

  final _estiloTexto = new TextStyle( fontSize: 25 );

  int _contador = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text( 'Número de taps:', style: _estiloTexto ),
            Text( '$_contador'  , style: _estiloTexto ),
          ],
        )
      ),
      floatingActionButton: _crearBotones()
    );
  }


  Widget _crearBotones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton( child: Icon(Icons.exposure_zero ), onPressed: _reset ),
        SizedBox(width: 190,),
        FloatingActionButton( child: Icon(Icons.remove ), onPressed: _restar ),
        SizedBox( width: 25 ),
        FloatingActionButton( child: Icon(Icons.add ), onPressed: _sumar ),
      ],
    );
  
  }

  void _sumar() {
    setState(() => _contador++ );
  }

  void _restar() {
    setState(() => _contador-- );
  }

  void _reset() {
    setState(() => _contador = 0 );
  }
}

