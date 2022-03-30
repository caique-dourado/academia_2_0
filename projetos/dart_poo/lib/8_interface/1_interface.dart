import 'package:dart_poo/8_interface/carro.dart';
import 'package:dart_poo/8_interface/gol.dart';
import 'package:dart_poo/8_interface/uno.dart';

//!variaveis de tipo superior e atributos de classe não são autopromovidos
void main() {
  var carroUno = Uno();

  //Assim não tenho acesso ao metodo tipoRodas() pois Gol está sendo só uma
  //instancia
  Carro carroGol = Gol();

//-------- Passando a ter acesso -----------
//Quando checamos se a varivel é de um determinado tipo, automaticamente o dart
//converte a variavel para o tipo chegado
  if (carroGol is Gol) {
    carroGol.velocidadeMaxima();
  }

  printarCarro(Carro carro) {
    print('''
Carro: ${carro.runtimeType}
Motor: ${carro.motor}
Pneus: ${carro.pneus}
Porta: ${carro.portas}
Velocidade Máxima: ${carro.velocidadeMaxima()}
Tipo de rodas: ${carro is Gol ? carro.tipoRodas() : 'Tipo não disponivel'}

''');
  }

  printarCarro(carroUno);
  printarCarro(carroGol);
}
