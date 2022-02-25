void main() {
  //? Metodos de uma lista

  var nomes = ['Hulk', 'Tony Stark'];
  //! Adcionando itens - add()
  nomes.add('Peter Park');
  print(nomes);

  //! Adcionando uma Lista de itens a lista - addAll()
  nomes.addAll([
    'Viuva negra',
    'DeadPool',
    'Capitão America',
    'Viuva negra',
    'Viuva negra'
  ]);
  print(nomes);

  //! Removendo um item exatamente igual da lista - remove(), esse metodo usa o equals
  nomes.remove('Hulk');
  print(nomes);

  //! Percorrendo a lista para remover os itens referentes a condição - removeWhere()
  nomes.removeWhere((nome) {
    if (nome == 'Viuva negra') {
      return true;
    } else {
      return false;
    }
  });
  print(nomes);

  //! Obtendo o primeiro index da lista
  print('PRIMEIRO NOME');
  print(nomes.first);

  //! Obtendo o ultimo index da lista
  print('ULTIMO NOME');
  print(nomes.last);

  //! Procurando o primeiro nome referente a uma condição - firstWhere()
  print('BUSCANDO POR UM NOME ESPECIFICO');
  // var primeiroNome = nomes.firstWhere((nome) => nome == 'DeadPool');
  var primeiroNome = nomes.firstWhere((nome) {
    if (nome == 'DeadPool') {
      print(nome);
      return true;
    } else {
      return false;
    }
  });

  //! Gerando listas automaticas
  print('GERANDO UMA LISTA DE NUMEROS');
  final numerosGerados = List.generate(10, (index) => index + 1);
  print(numerosGerados);

  //! Somando valores da lista - fold()
  print('SOMANDO INDICES DA LISTA');
  var soma = numerosGerados.fold<int>(
      0, (previousValue, numero) => previousValue += numero);

  print(soma);

  //! Spread Operator (...)
  print('SPREAD OPERATOR (...)');
  var listaNumerosSpreadB = [4, 5, 6];
  print(listaNumerosSpreadB);

  var listaNumerosSpread = [1, 2, 3, ...listaNumerosSpreadB];
  print(listaNumerosSpread);

  //! Collection if
  print('Collection IF');
  var promocaoAtiva = true;
  var produtos = [
    'Cerveja',
    'Refrigerante',
    if (promocaoAtiva) 'Suco de laranja'
  ];

  print(produtos);

  //! Collection FOR

  var listInt = [1, 2, 3];

  var listStrings = ['#0', for (var i in listInt) '#$i'];

  print(listStrings);
}
