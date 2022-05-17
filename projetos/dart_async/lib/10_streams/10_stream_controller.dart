import 'dart:async';

Future<void> main() async {
  print('INICIO DA STREAMCONTROLLER');
  //! Criando a StreamController
  StreamController streamController = StreamController();
  //!Criando o input(sink) e output(stream) da StreamController
  final inStream = streamController.sink;
  final outStream = streamController.stream;

  //!Criando as requisições de saida
  outStream
      .skip(2)
      .where((numero) => numero % 2 == 0)
      .map((numero) => 'O valor par enviado é $numero')
      .listen((strConvertida) {
    print('String recebida');
    print(strConvertida);
  });
//! Criando uma lista de valores de 0 a 19
  var numeros = List.generate(20, ((index) => index));
  //!Percorrendo a lista e adcionando cada elemento na streamController
  for (var numero in numeros) {
    inStream.add(numero);
    await Future.delayed(Duration(milliseconds: 500));
  }
//! FECHANDO A STREAM - DEVE SEMPRE FECHAR
  await streamController.close();
  print('FIM DA STREAMCONTROLLER');
}
