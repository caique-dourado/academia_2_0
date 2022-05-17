Future<void> main() async {
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);
  //para limitar o numero especifico de requisições usa-se o take()
  stream = stream.take(5);

  await for (var i in stream) {
    print(i);
  }
}

int callback(int value) {
  print('O valor é $value');
  return (value + 1) * 2;
}
