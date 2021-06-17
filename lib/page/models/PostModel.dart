import 'dart:convert';

class Post {
  String nombre;
  String email;
  String body;

  Post.fromjson(String json) {
    Map mapa = jsonDecode(json);
    this.nombre = mapa["nombre"];
    this.email = mapa["email"];
    this.body = mapa["body"];
  }
}
