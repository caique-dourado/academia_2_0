Future<void> main() async {
  var interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(5);
  //Ao inves de usar o for-loop, usa-se o toLis(), ele irá exibir todas as requisiçoes de uma só vez.
  var data = await stream.toList();
  print(data);
}

int callback(int value) {
  print('Valor do callback: $value');
  return (value + 1) * 2;
}
