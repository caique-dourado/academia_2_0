import 'dart:async';

/*Tornando os event em sincronos, isto é, ele espera e executa na ordem.
Em outras palavras, o await controla a ordem de execução do programa*/

Future<void> main() async {
  print('Inicio do main');

  scheduleMicrotask((() => print('MicroTask #1')));
  await Future.delayed(
      Duration(seconds: 1), (() => print('Future #1 delayed')));
  await Future(() => print('Future #2'));
  await Future(() => print('Future #3'));

  scheduleMicrotask(() => print('MicroTask #2'));
  print('Fim do main');
}
