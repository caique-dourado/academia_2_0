void main() {
  var listaNumero = List.generate(10, (index) => index);

  listaNumero.forEach((print));

  //Array bidimensional (Inserindo listas como elementos)
  var lista = [
    [1, 2],
    [3, 4],
  ];

  //expand() - juntando duas listas em uma unica
  var novalista = lista.expand((numeros) => numeros).toList();

  print(novalista);

//any()
  var listaNomes = ['João', 'Lucas', 'José', 'Marcos'];
  if (listaNomes.any((nome) => nome == 'Jão')) {
    print('Tem joão');
  } else {
    print('Não tem joão');
  }

  //every()
  var listaNomes2 = ['João', 'Lucas', 'José', 'Marcos'];

  if (listaNomes2.every((nome) => nome.contains('J'))) {
    print('Todos os elementos contem a letra J');
  } else {
    print('Nem todos os elementos contém a letra J');
  }

  //sort()
  var listaPacientes = [
    'Joao|43',
    'Lucas|22',
    'Maria|18',
    'Luiz|60',
  ];

  var novaListaPacientes = [...listaPacientes];

  novaListaPacientes.sort((String paciente1, String paciente2) {
    final pacientesDados1 = paciente1.split('|');
    final pacientesDados2 = paciente2.split('|');
    final idadePac1 = int.parse(pacientesDados1[1]);
    final idadePac2 = int.parse(pacientesDados2[1]);
    if (idadePac1 > idadePac2) {
      return 1;
    } else if (idadePac1 == idadePac2) {
      return 0;
    } else {
      return -1;
    }
  });

  print(novaListaPacientes);

  //CompareTo()
  var listaPacientes2 = [
    'Joao|43',
    'Lucas|22',
    'Maria|18',
    'Luiz|60',
  ];

  listaPacientes2.sort((paciente1, paciente2) {
    final dadosPaciente1 = paciente1.split('|');
    final dadosPaciente2 = paciente2.split('|');
    final idadePaciente1 = int.parse(dadosPaciente1[1]);
    final idadePaciente2 = int.parse(dadosPaciente2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });

  print(listaPacientes2);
}
