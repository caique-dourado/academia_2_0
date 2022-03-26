import 'package:dart_poo/3_inicializadores/cliente.dart';

//! TOMAR CUIDADO COM O LATE E O ! (FORCE NON NULL)
void main() {
  var c1 = Cliente.comNome(nome: 'Caique');
  c1.nome = 'Caique Dourado';
  print(c1.nome);
}
