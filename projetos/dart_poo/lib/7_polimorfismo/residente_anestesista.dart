import 'package:dart_poo/7_polimorfismo/anestesista.dart';

class ResidenteAnestesista extends Anestesista {
  @override
  void operar() {
    super.operar(); // pega o que o anestesista faz e junta com o residente
    print('Limpar os equipamentos');
  }
}
