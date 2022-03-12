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
  final pessoasSemDuplicados = pessoas.toSet().map((e) => e.split('|'));
  pessoasSemDuplicados.forEach((p) => print(p[0]));
  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  print(
      '2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas');
  final mapSexo = <String, List<String>>{};
  for (var pessoas in pessoasSemDuplicados) {
    final sexo = pessoas[2].toLowerCase();

    final listaMaculino = mapSexo['M'] ?? <String>[];
    final listaFeminino = mapSexo['F'] ?? <String>[];

    if (sexo == 'masculino') {
      listaMaculino.add(pessoas[0]);
    }

    if (sexo == 'feminino') {
      listaFeminino.add(pessoas[0]);
    }

    mapSexo['M'] = listaMaculino;
    mapSexo['F'] = listaFeminino;
  }
  final masculinos = mapSexo['M'] ?? <String>[];
  final femininos = mapSexo['F'] ?? <String>[];
  print('Masculinos: ${masculinos.length}');
  print(masculinos);
  masculinos.forEach((print));

  print('Femininos: ${femininos.length}');
  femininos.forEach((print));

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  print(
      '3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome');

  final pessoasMaior18 = pessoasSemDuplicados.where((p) {
    final idade = int.tryParse(p[1]) ?? 0;
    return idade > 18;
  }).toList();
  pessoasMaior18.forEach((p) => print(p[0]));
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  final pessoasOrdenada = [...pessoasSemDuplicados];
  pessoasOrdenada.sort((p1, p2) {
    final idadeP1 = int.tryParse(p1[1]) ?? 0;
    final idadeP2 = int.tryParse(p2[1]) ?? 0;
    return idadeP2.compareTo(idadeP1);
  });
  final pessoaMaisVelha = pessoasOrdenada.first;

  print(
      'Pessoa mais velha: ${pessoaMaisVelha[0]}, com idade de ${pessoaMaisVelha[1]} anos');
}
