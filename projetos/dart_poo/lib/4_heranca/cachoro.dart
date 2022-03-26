import 'animal.dart';

class Cachorro extends Animal {
  Cachorro({required int idade, required String nome})
      : super(idade: idade, nome: nome);

  @override
  calcularIdadeHumana() {
    return idade * 10;
  }
}
