import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget{

  @override
  createState() =>_ContadorPageState();
  
}

class _ContadorPageState extends State<ContadorPage> {

  final TextStyle _estiloTexto = new TextStyle(fontSize: 25 );

  int _conteo =0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Nata'),
        centerTitle: true,
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de taps:', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto),
          ],
        )
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width:30),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reinicio),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _restar),
        SizedBox(width: 5.0),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar),
      ],
    );
    
  }

  void _agregar(){
    setState(()=> _conteo++);
  }

  void _restar(){

    setState(()=> _conteo--);
  }

  void _reinicio(){
    setState(()=> _conteo =0);
  }

}