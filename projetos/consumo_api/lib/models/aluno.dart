import 'dart:convert';

import 'curso.dart';
import 'endereco.dart';

class Aluno {
  String id;
  int idade;
  List<String> nomeCursos;
  List<Curso> cursos;
  Endereco endereco;

  Aluno({
    required this.id,
    required this.idade,
    required this.nomeCursos,
    required this.cursos,
    required this.endereco,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'idade': idade,
      'nomeCursos': nomeCursos,
      'curso': cursos.map((curso) => curso.toMap()).toList(),
      'endereco': endereco.toMap(),
    };
  }

  factory Aluno.fromMap(Map<String, dynamic> map) {
    return Aluno(
      id: map['id'],
      idade: map['idade'],
      nomeCursos: map['nomeCursos'],
      cursos: map['cursos']
          .map<Curso>((cursoMap) => Curso.fromMap(cursoMap))
          .toList(),
      endereco: Endereco.fromMap(map['endereco']),
    );
  }

  String toJson() => jsonEncode(toMap());

  factory Aluno.fromJson(json) => Aluno.fromMap(jsonDecode(json));
}
