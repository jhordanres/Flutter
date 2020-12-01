import 'package:flutter/material.dart';


//Importaciones por mi
//import 'pages/home_page.dart';
import 'package:flutter_helloworld/src/pages/contador_page.dart';

class MyApp extends StatelessWidget{

  @override
  Widget build( context ){

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        //child: HomePage(),
        child: ContadorPage(),
      ),
    );

  }
}