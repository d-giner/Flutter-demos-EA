import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle; // Paquete para leer archivos JSON

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    cargarData();
  }
                                                 // Definimos la funcion como asíncrona y future ya que sino, se crea antes el widget
  Future<List<dynamic>> cargarData() async {     // antes de que estos datos sean cargados
    rootBundle.loadString('data/menu_opts.json') // Serializamos el JSON en string
        .then((data) {

          Map dataMap = json.decode(data);       // Creamos una tabla de hash a partir del JSON

      print(dataMap);
      opciones = dataMap['rutas'];
    });

    return opciones;
  }
}

final menuProvider = new _MenuProvider();