//É UMA CLASSE QUE É REPRESENTADA POR CHAVE E VALOR

void main() {
  print('--- CRIANDO UM MAP ---');
  var dados = {
    'nome': 'Caique Dourado',
    'idade': '26 anos',
  };
  print(dados);

  //! CARACTERISTICAS
  print('--- MAP NULL ---');
  //1 - O MAP PODE SER NULL - MAS SE FOR CRIANDO A CHAVE E VALOR SERÁ NON-NULLABLE
  Map<String, String>? mapComNullSafety;
  print(mapComNullSafety);

  print('--- MAP E VALOR NON-NULLABLE, MAS CHAVE NULL ---');
  //2 - MAP E VALOR NON-NULLABLE, MAS CHAVE NULL
  Map<String?, String> mapComNullSafety2 = {
    null: 'Vasco da Gama',
  };
  print(mapComNullSafety2);

  print('--- MAP E CHAVE NON-NULLABLE, MAS VALOR NULL ---');
  //3 - MAP E CHAVE NON-NULLABLE, MAS VALOR NULL
  Map<String, String?> mapComNullSafety3 = {
    'nome': null,
  };
  print(mapComNullSafety3);

//! METODOS
//.putIfAbsent() - Adciona uma chave e um valor no map. (Se a chave já existir ele não adciona)
  print('--- PUTIFABSENT() ---');
  dados.putIfAbsent('Profissao', (() => 'Desenvolvedor'));
  print(dados);

//.update() - Atualiza o valor de uma chave
  print('--- UPDATE() ---');
  dados.update('Profissao', (value) => 'Engenheiro de Software');
  print(dados);

  print('--- RECUPERAR VALOR ---');
  //Recuperando valor pela chave
  print(dados['nome']);

  print('--- FOREACH() ---');
  //forEach()
  dados.forEach((key, values) {
    print('Seu/Sua $key : $values');
  });

  //! NAO USE O forEach() EM REQUISIÇÕES ASSINCRONAS

  //.map() - TRANSFORMA UM MAPA

  var novosDados = dados.map((key, value) {
    return MapEntry(key + '_novo', value);
  });
  print(novosDados);
}
