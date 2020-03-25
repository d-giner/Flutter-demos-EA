import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final List<String> opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
        centerTitle: true,
      ),
      body: ListView(
          children: _crearItems()
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();       // Definimos una lista del tipo Widget

    for (String opc in opciones) {                 // Con este for rellenamos la lista de widgets
      final tempWidget = ListTile(                 // Declarado como final ya que el widget es Stateless
        title: Text(opc + '!!'),
          subtitle: Text('Texto de subtítulo.'),
          leading: Icon(Icons.accessibility),      // Icono al inicio del widget
          trailing: Icon(Icons.arrow_forward_ios), // Icono al final del widget
          onTap: (){}                              //Definir acción al pulsar sobre el widget
      );
      lista.add(tempWidget);
      lista.add(Divider(color: Colors.blue,));
    }

    return lista;
  }

  List<Widget> _crearItemsCorta() { // Otra forma de hacerlo, algo más avanzada
    return opciones.map((item) {    // Devuelve una nueva lista donde cada uno de los elementos pasará por la función definida
      return Column(                // En este caso lo que se ha hecho es añadir la excalamación y la línea divisora
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Texto de subtítulo.'),
            leading: Icon(Icons.accessibility),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){}
          ),
          Divider(
            color: Colors.blue,
          ),
        ],
      );
    }).toList();
  }



}