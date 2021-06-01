import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'models/PostModel.dart';

class Pos extends StatelessWidget {
  final styleForText = const TextStyle(
      fontSize: 24.0, color: Colors.black, fontWeight: FontWeight.w500);

  Widget build(BuildContext context) {
    return Scaffold();
  }

  Future<Post> getPost() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
    final respuesta = await http.get(url);
    if (respuesta.statusCode == 200) {
      return postFromJson(respuesta.body);
    } else {
      return null;
    }
  }
}
//ff
