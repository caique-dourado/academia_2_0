void main() {
  //#01 - Aceita nulo
  List<String>? nomes;

  //#02 - Não aceita nulos, nem pode ser nula
  List<String> nomesInternosNaoAceitaNulos = ['Caique', 'Dourado'];
  //! FORMATO PADRÃO - refatorando
  var nomeInternosNaoAceitaNulos = <String>['Caique', 'Dourado'];

  //#03 - Não pode ser nula, mas aceita itens nulos
  List<String?> nomesInternosAceitaNulos = ['Caique', null];
  //! FORMATO PADRÃO - refatorando
  var nomesInternosAceitaNulos2 = <String?>['Caique', null];

  //#04 - Lista pode ser nula e aceita itens nulos
  //! FORMATO PADRÃO - nesse caso deve ser assim
  List<String?>? nomesInternosNuloAceitaNulo = null;
}
