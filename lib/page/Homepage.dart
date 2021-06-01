import 'package:flutter/material.dart';
import 'package:menulateral/page/widget/drawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);
  final styleForText = const TextStyle(
      fontSize: 24.0, color: Colors.black, fontWeight: FontWeight.w500);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PGM de contabilidad',
            textDirection: TextDirection.ltr, style: styleForText),
      ),
      body: Center(
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text('Gustavo',
                style: TextStyle(color: Colors.black, fontSize: 20.0)),
            SizedBox(
              width: 10,
            ),
            Text('valdez',
                style: TextStyle(color: Colors.black, fontSize: 20.0)),
            Icon(
              Icons.accessibility_new_rounded,
              color: Colors.pink.shade700,
              size: 20.0,
            )
          ]),
        ]),
      ),
      drawer: MenuDrawer(),
    );
  }
}
//jsjs
