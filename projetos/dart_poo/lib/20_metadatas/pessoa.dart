//chamando o metadado/anotação Fazer

import 'dart:io';

import 'package:dart_poo/20_metadatas/fazer.dart';

@Fazer(
    quem: 'Caique dourado da class', oque: 'Tentando ler a anotacao da class')
@gzip
class Pessoa {
  @Fazer(
      quem: 'Caique dourado do atributo',
      oque: 'Tentando ler a anotacao do atributo')
  String? nome;

  @Fazer(
      quem: 'Caique dourado do metodo',
      oque: 'Tentando ler a anotacao do metodo')
  void fazerAlgo() {}
}
