import 'package:dart_poo/18_modificadores/pessoa.dart';

void main() {
  var p1 = const Pessoa(nome: 'Caique', idade: 25);
  var p2 = const Pessoa(nome: 'Caique', idade: 25);

  //Se fizer a comparação de igualdade, o retorno será verdadeiro. Isso porque
  //a variavel p2 está apontando para a mesma referencia de mnemoria.

  print(p1 == p2);
}
