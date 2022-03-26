import 'package:dart_poo/2_construtores/pessoa.dart';

void main() {
  var p1 = Pessoa(nome: 'Caique Dourado', idade: 25, sexo: 'Masculino');
  print(p1.nome);
  print('''
  Nome  : ${p1.nome}
  Idade : ${p1.idade}
  Sexo  : ${p1.sexo}
''');

  var p2 = Pessoa.semNome(idade: 18, sexo: 'F');
  print('''
  Idade : ${p2.idade}
  Sexo  : ${p2.sexo}
''');

  var p3 = Pessoa.fabrica('Caique Dourado');
  print(p3.nome);
}
