import 'package:dart_poo/16_ordencao_default/cliente.dart';

void main() {
  var c1 = Cliente(nome: 'Caique', telefone: '123456');
  var c2 = Cliente(nome: 'Luana', telefone: '123456');
  var c3 = Cliente(nome: 'Agelo', telefone: '123456');
  var c4 = Cliente(nome: 'Barack', telefone: '123456');

  var lista = [c1, c2, c3, c4];

  print(lista);
  lista.sort();
  print('LISTA ORDENADA POR NOME');
  print(lista);
}
