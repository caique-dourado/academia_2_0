import 'package:dart_poo/13_operator_method/numero.dart';

//! É a forma de criar metodos usando alguns caracteres especiais como: +,-,*, /
void main() {
  var n1 = Numero(40);
  var n2 = Numero(550);

//chamando o operator soma que multiplica por 2
  var totalSoma = n1 + n2;
  print(totalSoma.i);
}
