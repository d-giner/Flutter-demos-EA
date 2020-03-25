import 'package:demo2ea/src/pages/alert_page.dart';
import 'package:demo2ea/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';
import 'package:demo2ea/src/providers/menu_provider.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo 2 EA'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // print(menuProvider.opciones);
    return FutureBuilder(
      future: menuProvider.cargarData(),
      // Característica enlazada a lo que queremos esperar
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data,
              context), // Pasamos el resultado del future a la función que nos construirá el widget
        );
      },
    );
  }


  List<Widget> _listaItems(List<dynamic> data, context) {
    // Función con la que plasmaremos cada elemento de la lista en el widget de tipo lista
    final List<Widget> opciones = [];
    data.forEach((opcion) {
      final widgetTemp = ListTile(
        title: Text(opcion['texto']),
        leading: getIcon(opcion['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, opcion['ruta']);

          /** Método alternativo para generar rutas de navegación */
//          final route = MaterialPageRoute( // Definimos la ruta hacia la siguiente página al pulsar sobre el ListTile
//              builder: (context) => AlertPage()
//          );
//          Navigator.push(context,
//              route); // Requiere el contexto de la app para saber qué irá después y qué dejaremos atrás
        /** END */

        },
      );
      opciones.add(widgetTemp);
      opciones.add(Divider(color: Colors.blue,)); // Añade una barra divisora entre ListTiles
    });
    return opciones;
  }
}
