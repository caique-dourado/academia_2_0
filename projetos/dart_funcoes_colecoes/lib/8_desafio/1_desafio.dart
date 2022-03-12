void main() {
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  print('1 - Remova os pacientes duplicados e apresente a nova lista');
  final pessoasSemDuplicados = pessoas.toSet();
  print(pessoasSemDuplicados.toList());
  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  print(
      '2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas');
  int qtdMasc = 0;
  int qtdFem = 0;
  var listaNomesMasculinos = [];
  var listaNomesFeminina = [];
  for (var dados in pessoasSemDuplicados) {
    var novaListaPessoa = dados.split('|');

    if (novaListaPessoa[2] == 'Masculino') {
      qtdMasc++;
      listaNomesMasculinos.add(novaListaPessoa[0]);
    } else {
      qtdFem++;
      listaNomesFeminina.add(novaListaPessoa[0]);
    }
  }
  print('Masculino: $qtdMasc | Feminino: $qtdFem');
  print('Lista de nomes Masculina: $listaNomesMasculinos');
  print('Lista de nomes Feminina: $listaNomesFeminina');

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  print(
      '3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome');
  var listaMaior18 = [];
  for (var dados in pessoasSemDuplicados) {
    var novaListaPessoas = dados.split('|');
    final idade = int.parse(novaListaPessoas[1]);
    if (idade > 18) {
      listaMaior18.add(novaListaPessoas[0]);
    }
  }
  print('Pessoas maiores de 18 anos: $listaMaior18');
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  print('4 - Encontre a pessoa mais velha e apresente o nome dela.');
  var pessoasOrdenada =
      [...pessoasSemDuplicados].map((e) => e.split("|")).toList();
  pessoasOrdenada.sort((pessoa1, pessoa2) {
    var dadosPessoa1 = pessoa1;
    var dadosPessoa2 = pessoa2;

    final idadePessoa1 = int.parse(dadosPessoa1[1]);
    final idadePessoa2 = int.parse(dadosPessoa2[1]);
    return idadePessoa2.compareTo(idadePessoa1);
  });
  var pessoaMaisVelha = pessoasOrdenada.first;

  print('A pessoa mais velha é: ${pessoaMaisVelha[0]}');
}
