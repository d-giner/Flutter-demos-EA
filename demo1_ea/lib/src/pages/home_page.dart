import 'package:flutter/material.dart';

// Prueba del contador con un StatelessWidget
class HomePage extends StatelessWidget{

  final estiloTexto = new TextStyle( fontSize: 25 );

  final contador = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text( 'Número de clicks:', style: estiloTexto ),
            Text( '$contador'  , style: estiloTexto ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add ),
        onPressed: () {

          print('Hola Mundo!');
          // contador++;

        },
      ),
    );
  }


}