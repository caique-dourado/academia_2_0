Future<void> main() async {
  var interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);
  //o skip() é usado apos o take, ele indica quantos saltos iniciais devem ser feitos
  stream = stream.take(5).skip(2);

  await for (var i in stream) {
    print(i);
  }
}

int callback(int value) {
  print('Valor do callback: $value');
  return (value + 1) * 2;
}
