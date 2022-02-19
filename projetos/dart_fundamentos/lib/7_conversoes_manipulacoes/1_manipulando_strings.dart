void main() {
  //! Pegando parte de uma string - substring()
  //? APLICAÇÃO: Geralmente é usado para pergar parte de strings de um banco no backend
  var nome = 'Caique Dourado';
  var subStringNome = nome.substring(7);
  print(subStringNome);
  var sexo = 'Masculino';
  var sexoSigla = sexo.substring(0, 1);
  //USANDO EM UMA APLICAÇÃO REAL - CHECANDO VALORES DE UM BANCO
  if (sexoSigla == 'M') {
    print('Seu sexo é Masculino');
  }
  //FORMA CORRETA USANDO startWith()
  if (sexo.toLowerCase().startsWith('mas')) {
    print('Seu sexo é Masculino');
  }

  //! Ver se contem um conjunto de caractres numa string - contains()
  if (nome.toLowerCase().contains('dourado')) {
    print('É da familia Dourado!');
  }
  //! Para se quebrar uma string e delimitada pelo separador
  //! usa o Split(), TRANSOFRMANDO A STRING EM LISTA
  var funcionario = 'Caique Dourado|26|Desenvolvedor de Software|MA';
  var nomeFuncionario = funcionario.split('|');
  print(nomeFuncionario);
}
