import 'package:dart_poo/4_heranca/cachoro.dart';
import 'package:dart_poo/4_heranca/gato.dart';

void main() {
  var c = Cachorro(idade: 7, nome: 'Cachoro');
  c.tamanho = 'pequeno';

  print('''
Nome        : ${c.nome}
Tamanho     : ${c.tamanho}
Idade       : ${c.idade}

Idade Humana: ${c.calcularIdadeHumana()}
''');

  var g = Gato(idade: 2, nome: 'Gato');
  g.tamanho = 'Grande';
  print('''
Nome        : ${g.nome}
Tamanho     : ${g.tamanho}
Idade       : ${g.idade}

Idade Humana: ${g.calcularIdadeHumana()}
''');
}
