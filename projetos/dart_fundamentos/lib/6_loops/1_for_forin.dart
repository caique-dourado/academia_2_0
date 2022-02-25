void main() {
  //! For convencional
  print('-----------------------');
  print('Usando for convencional');
  print('-----------------------');
  var listaNomes = ['Caique', 'Felicity', 'Odin', 'Michelangelo', 'Donatelo'];
  for (var i = 0; i < listaNomes.length; i++) {
    print(listaNomes[i]);
  }
  print('-------------');
  print('Usando for in');
  print('-------------');
  //! For in
  for (var nome in listaNomes) {
    print(nome);
  }
  print('--------------------');
  print('Usando for com break');
  print('--------------------');
  //! For com break - Quando encontrar o valor encerra o lopp
  for (var i = 0; i < listaNomes.length; i++) {
    if (i == 2) {
      break;
    }
    print(listaNomes[i]);
  }

  //! For in com break
  print('-----------------------');
  print('Usando for in com break');
  print('-----------------------');
  for (var nome in listaNomes) {
    if (nome == 'Odin') {
      continue;
    }
    print(nome);
  }
//! for com continue -  É parecido com o break só que nesse caso ele salta e continua executando
  print('-----------------------');
  print('Usando for in com continue');
  print('-----------------------');
  for (var i = 0; i < listaNomes.length; i++) {
    if (i == 1) {
      continue;
    }
    print(listaNomes[i]);
  }
}
