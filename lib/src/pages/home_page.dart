

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final TextStyle estiloTexto = new TextStyle(fontSize: 25 );

  final conteo =10;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Hola Nata'),
        centerTitle: true,
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Esto es lo que me gustas', style: estiloTexto),
            Text('$conteo', style: estiloTexto),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){

            print('Hola Mundo');
            //conteo++;
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

}