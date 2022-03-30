import 'package:dart_poo/8_interface/carro.dart';

//! usa-se o implements para implementar uma interface

class Uno implements Carro {
  @override
  String motor = "1.0";

  @override
  int pneus = 4;

  @override
  int portas = 2;

  @override
  int velocidadeMaxima() {
    return 160;
  }
}
