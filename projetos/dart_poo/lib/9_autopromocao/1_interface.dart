import 'package:dart_poo/8_interface/carro.dart';
import 'package:dart_poo/8_interface/gol.dart';
import 'package:dart_poo/8_interface/uno.dart';

void main() {
  var carroUno = Uno();
  Carro carroGol = Gol();

  printarCarro(Carro carro) {
    print('''
Carro: ${carro.runtimeType}
Motor: ${carro.motor}
Pneus: ${carro.pneus}
Porta: ${carro.portas}
Velocidade Máxima: ${carro.velocidadeMaxima()}

''');
  }

  printarCarro(carroUno);
  printarCarro(carroGol);
}
