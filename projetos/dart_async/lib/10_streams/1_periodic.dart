void main() async {
  print('Inicio Stream');
  final interval = Duration(seconds: 2);
  //Stream.periodic - recebe um intervalo e um callback
  var stream = Stream<int>.periodic(interval, callback);
//await for
  await for (var i in stream) {
    print(i);
  }
  print('Fim da Stream');
}

int callback(int value) {
  print('O valor é $value');
  return (value + 1) * 2;
}
