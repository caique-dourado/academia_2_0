Future<void> main() async {
  var mensagem = await processo1();
  print(mensagem);

  //Tratando excessoes com o await, usa-se o tratamento try catch
  try {
    await processo2();
  } on Exception catch (e) {
    print('Erro na chamada do processo 2 $e');
  }
}

Future<String> processo1() async {
  return Future.delayed(Duration(seconds: 1), () => 'Fim do processo 1');
}

Future<String> processo2() async {
  return Future.delayed(Duration(seconds: 1), () => throw Exception());
}
