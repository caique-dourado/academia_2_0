void main() {
//Cascade notatio (..) serve basicamente para evitar o uso de variaveis.
//Serve tanto para instaciar um objeto, quanto para chamar os seus métodos
  Pessoa()
    ..nome = 'Caique Dourado'
    ..email = 'eng.caiquedourado@gmail.com'
    ..site = 'dart.dev'
    ..printPessoa(); //!Não foi preciso criar uma variavel para instanciar devido
  //!ao uso do cascade notation (..)
}

class Pessoa {
  String? nome;
  String? email;
  String? site;

  void printPessoa() {
    print('''
  Pessoa:
  Nome: $nome
  Email: $email
  Site: $site
''');
  }
}
