import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:menulateral/page/widget/compani.dart';
import 'package:menulateral/page/widget/drawer.dart';

import 'models/postModel.dart';

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
      body: FutureBuilder<Post>(
          future: getinfo(),
          builder: (context, snapshot) {
            Post post = snapshot.data;
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(children: [
                compani(titulo: 'nombre', dato: post.nombre),
                compani(titulo: 'email', dato: post.email),
                compani(titulo: 'body', dato: post.body),
              ]);
            } else {
              return CircularProgressIndicator();
            }
          }),
      drawer: MenuDrawer(),
    );
  }

  Future<Post> getinfo() async {
    var url = Uri.parse('https://44987f9a4348.ngrok.io/coments/2');
    var respuesta = await http.get(url);
    print('estado de respuesta: ${respuesta.statusCode}');
    print('contenido de respuesta: ${respuesta.body}');

    return new Post.fromjson(respuesta.body);
  }
}
