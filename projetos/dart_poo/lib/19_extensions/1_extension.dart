import 'package:dart_poo/19_extensions/pessoa.dart';
import 'package:dart_poo/19_extensions/pessoa_saudacao_extension.dart';
import 'package:dart_poo/19_extensions/saudacao_string_extension.dart';

void main() {
  var nome = 'Caique Dourado';

  print(nome.saudacao());

  var p1 = Pessoa(nome: 'Caique');

  print(p1.saudacao());
}
