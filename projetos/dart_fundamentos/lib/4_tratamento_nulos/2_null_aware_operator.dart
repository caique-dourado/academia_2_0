String? nome;
void main() {
  String sobreNome = ' Dourado';
  //! CONDITIONAL OR
  //! SE nome FOR NULO ELE ATRIBUI A STRING DEPOIS DE ??
  var nomeCompleto = (nome ?? 'Caique') + sobreNome;

  print(nomeCompleto);

  //* isso aqui não funciona, pois da um erro em tempo de compilação pq não
  //* não se usa o conditional or em uma varivel já inicializada

  var nomeCompleto2 = 'Caique';
  print(nomeCompleto2 ?? 'Caique Dourado');
}
