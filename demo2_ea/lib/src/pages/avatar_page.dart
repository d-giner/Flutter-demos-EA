import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class  AvatarPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.black,


              child: Text('DG'),
              //backgroundColor: Colors.purple,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://alcanzandoelconocimiento.com/wp-content/uploads/2020/03/JACK-MA.jpg'),
              ),
            ),
            Divider(height: 15, color: Colors.white,),
            Text('Alumne: Jack Ma', textScaleFactor: 1.5,),
            Divider(height: 10, color: Colors.white,),
            Text('Assignatura: EA', textScaleFactor: 1.5,),
            Divider(height: 10, color: Colors.white,),
            Text('Grup: 1', textScaleFactor: 1.5,),
          ],
        ),
      ),
    );
  }
}