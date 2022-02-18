void main() {
  //! Regras para criar listas
  //! PADRÕES MAIS COMUM
  //#1 - Dart infere o tipo de acordo com os valores inicializados na lista
  var lista = [1, 2, 3, 4];

  //#2 - Para criar uma lista vazia usa a notação generic <> para tipa-la
  var lista1 = <int>[];

  //#3 - PODE-SE USAR ESSE PADRÃO SOMENTE EM CASO DE NULLSAFETY (?)
  List<String> lista2 = [];
}
