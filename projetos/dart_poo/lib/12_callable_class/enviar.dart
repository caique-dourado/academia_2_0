class EnviarEmail {
  //! Usando a palavra reservada call, permite que a class seja invacada como
  //! uma função (diretamente)
  bool call({required String email}) {
    print('Chamando o método call');
    return true;
  }
}
