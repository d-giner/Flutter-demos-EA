import 'package:flutter/material.dart';

class  AlertPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () {
            _mostrarAlerta(context);
          },
        ),
      ),
    );
  }

  // Crear una notifiación Pop up
  void _mostrarAlerta(BuildContext context) {
    showDialog(context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          title: Text('Alerta'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Esto es el mensaje de ejemplo de la alerta.'),
              FlutterLogo(size: 50,)
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancelar'),
              onPressed: () => Navigator.of(context).pop()
            ),
            FlatButton(
                child: Text('Aceptar'),
                onPressed: () => Navigator.of(context).pop()
            ),
          ],
        );
      },
    );
  }
}