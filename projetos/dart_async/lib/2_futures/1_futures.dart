//! Assync são para executar processos em segundo plano.
//! Todo método assync é do tipo Future.
//! Tem-se dois estados (Completo e Incompleto)
//!Completo - Entra no .then()
//! Incompleto - Entra no catchError ou OnError
//! WhenComplete - independente do estado ele será executado
main() {
  print('Inicio do P1');
  processo2();
  //Para recuperar o valor usa-se o .then()
  processo3().then((mensagem) {
    print(mensagem);
  });
  print('Fim do P1');
//Para tratar error no future
//OnError e catchError trata erros vindo do future
  processo4()
      .then((mensagem) => print('Mensagem do P4 $mensagem'))
      .catchError((error) => print('Error ao executar o processo 4'));
  //Erros vindo do then(), devem ser tratados com try catch dentro do then()

  //! whenComplete() - independente do resultado, ele sempre será executado
  processo4()
      .then((mensagem) => print('Mensagem do P4 $mensagem'))
      .catchError((error) => print('Error ao executar o processo 4.2'))
      .whenComplete(() => print('Finalizou com error'));
}

//retornando uma string
Future<String> processo3() async {
  print('Inicio do P3');
  return Future.delayed(Duration(seconds: 3), () => 'Fim do processo P3');
}

Future<void> processo2() async {
  print('Inicio do P2');
  Future.delayed(Duration(seconds: 2), () {
    var i = 0;
    while (i < 3) {
      print(i);
      i++;
    }
    print('Fim do P2');
  });
}

Future<String> processo4() {
  print('Inicio do Processo 4');
  return Future.delayed(Duration(seconds: 3), (() => throw Exception()));
}
