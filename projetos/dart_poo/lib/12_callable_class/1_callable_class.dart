import 'package:dart_poo/12_callable_class/enviar.dart';

//! usando o método call para invocar a class como uma funçãos
void main() {
  var enviarEmail = EnviarEmail();

  enviarEmail(email: 'eng.caiquedourado@gmail.com');
}
