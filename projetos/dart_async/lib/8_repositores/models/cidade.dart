import 'dart:convert';

class Cidade {
  final String cep;
  final String logradouro;
  final String complemento;
  final String bairro;
  final String localidade;
  final String uf;
  final String ddd;
  Cidade({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.bairro,
    required this.localidade,
    required this.uf,
    required this.ddd,
  });

//1# passo - criar factory fromMap
  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      cep: map['cep'],
      logradouro: map['logradouro'],
      complemento: map['complemento'],
      bairro: map['bairro'],
      localidade: map['localidade'],
      uf: map['uf'],
      ddd: map['ddd'],
    );
  }

//2# passo - criar factory fromJson
  factory Cidade.fromJson(String source) => Cidade.fromMap(jsonDecode(source));

//3# passo - criar Map
  Map<String, dynamic> toMap() {
    return {
      'cep': cep,
      'logradouro': logradouro,
      'complemento': complemento,
      'bairro': bairro,
      'localidade': localidade,
      'uf': uf,
      'ddd': ddd,
    };
  }

//4# passo - criar toJson
  String toJson() => jsonEncode(toMap());

  @override
  String toString() {
    return 'Cidade(cep: $cep, logradouro: $logradouro, complemento: $complemento, bairro: $bairro, localidade: $localidade, uf: $uf, ddd: $ddd)';
  }
}
