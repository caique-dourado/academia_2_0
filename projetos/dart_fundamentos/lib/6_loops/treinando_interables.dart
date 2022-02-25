void main() {
  var listaFuncionarios = <String>[
    'Mila Carvalho ',
    'Jana Jesus',
    'Vitor',
    'Ivana',
    'Tiffany Franco',
    'Melânia Palhares'
  ];

  var extLista =
      listaFuncionarios.firstWhere((element) => element == 'Jana Jesus');
  print(extLista);

  print(listaFuncionarios.last);

  print(listaFuncionarios.skipWhile((value) => value != 'Vitor'));
  var novaLista = listaFuncionarios
      .skipWhile((value) => value != 'Vitor')
      .toList()
      .forEach((element) => print(element.toString()));
}
