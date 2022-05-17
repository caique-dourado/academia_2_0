import 'dart:convert';

class Telefone {
  int ddd;
  String telefone;
  Telefone({required this.ddd, required this.telefone});

  //*é um método que pega o objeto (Telefone) e transforma em um Map<String, dynamic>
  Map<String, dynamic> toMap() {
    return {
      'ddd': ddd,
      'telefone': telefone,
    };
  }

//*é um construtor que vai pegar um MAP e transformar em objeto (Telefone)
  factory Telefone.fromMap(Map<String, dynamic> map) {
    return Telefone(
      ddd: map['ddd'] ?? 0,
      telefone: map['telefone'] ?? '',
    );
  }

//*é um método que retorna uma String Json do meu objeto (Telefone)
  String toJson(json) => jsonEncode(toMap());

//*é um método que baseado em uma String Json retorna um objeto (Telefone)
  factory Telefone.fromJson(json) => Telefone.fromJson(jsonDecode(json));
}

//!DICA
//*to - transforma os dados em alguma coisa
//*from - a criação baseada em um parametro