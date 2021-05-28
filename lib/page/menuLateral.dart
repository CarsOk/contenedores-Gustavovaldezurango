import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final styleForText = const TextStyle(
      fontSize: 24.0, color: Colors.black, fontWeight: FontWeight.w500);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PGM de contabilidad',
            textDirection: TextDirection.ltr, style: styleForText),
      ),
      body: Center(
        child: Column(children: [
          Image.asset('imagenes/contabilidad.jpg', height: 400, width: 200),
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text(
                "Valdez",
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: Text(
                "valdezgustavo461@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "http://www.solofondos.com/wp-content/uploads/2015/12/fondos-de-colores-claros-lila.jpg"),
                      fit: BoxFit.cover)),
            ),
            Ink(
              color: Colors.cyan.shade100,
              child: new ListTile(
                title: Text(
                  "urango",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
