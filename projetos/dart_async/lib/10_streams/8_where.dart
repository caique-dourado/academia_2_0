void main() {
  var interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);
  //where() é o inverso do skipWhile(), ou seja, se a condição for true ela vai passar
  //Ele serve para filtrar os dados, portanto usa-se mais o where() do que o skipeWhile()
  stream = stream.where((numero) => numero % 6 == 0).take(3);

  stream.listen((numero) {
    print('Valor do listen $numero');
  });
}

int callback(int value) {
  print('Valor do callback: $value');
  return (value + 1) * 2;
}
