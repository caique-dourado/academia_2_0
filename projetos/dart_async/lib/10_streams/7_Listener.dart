void main() {
  print('Inicio');
  var interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.take(10);
  //O listen() executa todo o programa do inicio ao fim, possibilitando que se faça outras coisas
  //em outras palavras ele fica escutando o Stream, esperando que ele tenha requisições a serem executadas
  stream.listen((numero) {
    print('valor do listen $numero');
  });
  print('Fim');
}

int callback(int value) {
  print('Valor do callback: $value');
  return (value + 1) * 2;
}
