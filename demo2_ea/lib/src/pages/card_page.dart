import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),  // Con esto añadimos unos márgenes de separación a la Card respecto a los bordes del Scaffold
        //padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20), // Márgenes distintos para los bordes horizontales y verticales
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 16),
          _cardTipo2()
        ],

      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('Soy el título de la tarjeta:'),
            subtitle: Text(
                'Esto sería la descripción referenciada a lo que hay escrito de título. Esto es algo similar al RecyclerVIew. Creo...'),
            leading: Icon(Icons.folder_open, color: Colors.blue,),
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
              child: Text('Cancelar'),
              onPressed: (){},
            ),
            FlatButton(
              child: Text('Aceptar'),
              onPressed: (){},
            ),
          ],
        )
        ],
      ),
    );
  }

  Widget _cardTipo2(){
    final card =  Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://cdn.cnn.com/cnnnext/dam/assets/190517091026-07-unusual-landscapes-travel.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 100),
            height: 220,
            fit: BoxFit.cover,

          ),
          Container(
              child: Text('Esta foto es muy bonita.')
          ),
        ],
      )
    );

    // Personalizar una container para que tenga aspecto de tarjeta, sombra, etc.
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(2,10),
          )
        ]
        //borderRadius: BorderRadius.circular(35),
      ),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }

}
