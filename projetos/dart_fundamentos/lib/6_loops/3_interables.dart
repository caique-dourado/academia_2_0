void main() {
  //? SEMPRE USAR O toList() para converter o interable em lista
  var numeros = List.generate(10, (index) => index);

  //METODOS INTERABLES
  //! #1 where() - Encontre
  numeros.where((numero) => numero != 5);

  //! #2 forEach() - Converta o valor
  numeros.where((numero) => numero != 5).forEach((numero) => print(numero));

  //! #3 takeWhile() - Faça até que
  var numerosAte5 = numeros.takeWhile((numero) => numero < 6).toList();
  print(numerosAte5);

  //! #3 skipWhile() - Vai percorrer a liesta até satisfazer a condiçao
  //! quando ela for true, ele vai retorna o restante
  var listaNomes = ['Caique', 'Felicity', 'Odin', 'Michelangelo', 'Donatelo'];
  var nomeSkip = listaNomes.skipWhile((nome) {
    if (nome != "Odin") {
      return true;
    } else {
      return false;
    }
  }).toList();
  print(nomeSkip);

  //! map() - serve para converter uma lista em qualquer coisa

  var numerosList = numeros.map((numero) {
    return numero + 10;
  }).toList();

  print(numerosList);
}
