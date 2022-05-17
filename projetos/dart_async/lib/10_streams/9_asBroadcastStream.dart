void main() {
  var interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.take(10);
  //Para ouvir mais de uma Stream, deve-se usar o método asBroadcastStream()
  stream = stream.asBroadcastStream();
  stream.listen((numero) {
    print('Valor do listen $numero');
  });

  stream.listen((numero) {
    print('Valor do listen $numero');
  });
}

int callback(int value) {
  print('Valor do callback $value');
  return (value + 1) * 2;
}
