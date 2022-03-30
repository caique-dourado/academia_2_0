import 'package:dart_poo/10_mixins/joao.dart';

//! é uma classe como qualquer outra para se ter herança multipla
//! A sobreescrita de metodos ocorre se os metedos tiverem a mesma assinatura

void main() {
  var joao = Joao();

  print('''
Joao
Habilidade ${joao.habilidade()}
Canta: ${joao.cantar()}
Dança: ${joao.dancar()}

''');
}
