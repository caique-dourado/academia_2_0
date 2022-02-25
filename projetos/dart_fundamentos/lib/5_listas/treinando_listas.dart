void main() {
  var listAleatoria = List.generate(20, (index) => index + 1);
  print(
      '-----------------------------------------------------------------------');
  print('LISTA PADRAO');
  print(listAleatoria);
  print(
      '-----------------------------------------------------------------------');

  print(listAleatoria.reversed);

  var verificar = listAleatoria.contains(33) ? 'Tem o valor' : 'Não contém';
  print(verificar);

  print(listAleatoria.firstWhere((numero) => numero == 2));
}
