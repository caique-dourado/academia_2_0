import 'animal.dart';

class Gato extends Animal {
  Gato({required idade, required nome}) : super(idade: idade, nome: nome);
  @override
  calcularIdadeHumana() {
    return idade * 15;
  }
}
