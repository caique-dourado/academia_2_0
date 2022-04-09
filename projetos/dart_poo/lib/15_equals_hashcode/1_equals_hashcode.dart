import 'package:dart_poo/15_equals_hashcode/pessoa.dart';

void main() {
  var p1 = Pessoa(nome: 'Caique', email: 'eng.caiquedourado@gmail.com');
  var p2 = Pessoa(nome: 'Caique', email: 'eng.caiquedourado@gmail.com');

  print(p1.hashCode);
  print(p2.hashCode);
  print(p1);

  if (p1 == p2) {
    print('É igual');
  } else {
    print('Não é igual');
  }
}

//! Usando variaveis
/*var nome = 'Caique';
  var nome2 = 'Caique';
  //Referencia de memória (mesmo hashcode, mesma referencia de memória)
  print(nome.hashCode);
  print(nome2.hashCode);

  if (nome == nome2) {
    print('É igual');
  } else {
    print('Não é igual');
  }*/