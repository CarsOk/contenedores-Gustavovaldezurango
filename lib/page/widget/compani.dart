import 'package:flutter/material.dart';

class compani extends StatelessWidget {
  final String titulo;
  final String dato;
  const compani({
    this.titulo,
    this.dato,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titulo,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 15.0,
        ),
        Text(dato),
      ],
    );
  }
}
