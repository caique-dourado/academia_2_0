import 'dart:convert';

import 'cidade.dart';
import 'telefone.dart';

class Endereco {
  String rua;
  int numero;
  int cep;
  Cidade cidade;
  Telefone telefone;

  Endereco({
    required this.rua,
    required this.numero,
    required this.cep,
    required this.cidade,
    required this.telefone,
  });

  Map<String, dynamic> toMap() {
    return {
      'rua': rua,
      'numero': numero,
      'CEP': cep,
      'cidade': cidade.toMap(),
      'telefone': telefone.toMap(),
    };
  }

  factory Endereco.fromMap(Map<String, dynamic> map) {
    return Endereco(
      rua: map['rua'] ?? '',
      numero: map['numero'] ?? 0,
      cep: map['CEP'] ?? 0,
      cidade: Cidade.fromMap(map['cidade']),
      telefone: Telefone.fromMap(map['telefone']),
    );
  }

  String toJson() => jsonEncode(toMap());

  factory Endereco.fromJson(json) => Endereco.fromMap(jsonDecode(json));
}
