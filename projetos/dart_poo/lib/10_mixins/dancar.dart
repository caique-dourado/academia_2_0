import 'package:dart_poo/10_mixins/artista.dart';

// 1ª forma de criar um mixin (on é a regra onde o mixin pode ser usado)
mixin Dancar on Artista {
  String dancar() {
    return "Dança forró";
  }
}
