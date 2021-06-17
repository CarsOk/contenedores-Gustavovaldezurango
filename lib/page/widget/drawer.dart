import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: <Widget>[
        new UserAccountsDrawerHeader(
            accountName: Text(
              "Valdez",
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: Text(
              "valdezgustavo461@gmail.com",
              style: TextStyle(color: Colors.black),
            ),
            decoration: BoxDecoration(color: Colors.cyan.shade100)),
        Ink(
          color: Colors.cyan.shade100,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "formulario",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ListTile(
                title: Text(
                  "listas de trabajadores",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
//fg
