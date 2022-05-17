void main() async {
  print('Inicio takeWhile');
  var interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

//takeWhile() é um controlado que funciona igual ao while, a ele será executado enquanto a condição for true
  stream = stream.takeWhile((element) {
    return element < 10;
  });
  await for (var i in stream) {
    print(i);
  }
  print('Fim takeWhile');
}

int callback(int value) {
  print('o valor é $value');
  return (value + 1) * 2;
}
