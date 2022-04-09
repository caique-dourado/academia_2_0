import 'package:dart_poo/19_extensions/pessoa.dart';

extension PessoaSaudacao on Pessoa {
  String saudacao() {
    return 'Olá $nome, Seja bem vido(a) a Academia do Flutter 2.0';
  }
}
