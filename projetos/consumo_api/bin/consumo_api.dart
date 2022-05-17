import 'dart:convert';

import 'package:consumo_api/consumo_api.dart' as consumo_api;

void main(List<String> arguments) {
  final cidadeJson = '''
 [ {
    "id": 1,
    "nome": "São Luís"
  }]
''';

//Quando a estrutura geral do json começar com [] - irá retornar um list<dynamic>
//Quando começar {} - irá retornar um Map<String, dybamic>
//*Passando uma tipo para Json - JsonDecode()
  final cidadeMap = jsonDecode(cidadeJson);

  //!Acessando dados de um map
  //print(cidadeMap['nome']);

  //!Caso seja uma list, deve ser varrida com forEach()
  cidadeMap.forEach((element) => print(element['nome']));

  //* Passando Map para Json - jsonEncode()

  final cidadeMapJson = {
    'id': 123,
    'nome': 'São Luís',
    'uf': 'MA',
  };

  print(jsonEncode(cidadeMapJson));
}
