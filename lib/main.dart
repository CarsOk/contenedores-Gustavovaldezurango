import 'package:flutter/material.dart';
import 'package:menulateral/page/homepage.dart';

void main() {
  runApp(Valdez());
}

class Valdez extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'app Sena',
        theme: ThemeData(primarySwatch: Colors.cyan),
        debugShowCheckedModeBanner: false,
        home: Homepage());
  }
}
