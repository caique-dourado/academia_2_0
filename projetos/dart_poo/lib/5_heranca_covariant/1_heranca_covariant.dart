import 'package:dart_poo/5_heranca_covariant/banana.dart';
import 'package:dart_poo/5_heranca_covariant/fruta.dart';
import 'package:dart_poo/5_heranca_covariant/humano.dart';
import 'package:dart_poo/5_heranca_covariant/macaco.dart';

//covariant - permite que faça uma sobreescrita de tipo
void main() {
  var macaco = Macaco();
  macaco.comer(Banana(tipo: 'nanica'));

  var humano = Humano();
  humano.comer(Fruta());
}
