Future<void> main() async {
  var interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.take(5).takeWhile((element) {
    print('Valor do skipWhile: $element');
    return element < 10;
  });
  await for (var i in stream) {
    print(i);
  }
}

int callback(int value) {
  print('Valor do callback $value');
  return (value + 1) * 2;
}
