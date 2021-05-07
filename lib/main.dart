import 'package:flutter/material.dart';
void main(){
  runApp(valdez());
}
class Valdez extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'app Sena',
      theme: ThemeData(primarySwatch: Colors.brown),
      home: HomePage(),

    )
  }
}

class HomePage extends StatefulWidget{
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      title: Text('programa de contabiñidad',),
    ),

     )

    )
  }
}