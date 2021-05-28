import 'package:flutter/material.dart';
import 'package:valdez0001/page/homepage.dart';

void main() => runApp(MyAplicacion());

class MyAplicacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
