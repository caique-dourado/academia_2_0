//É BASICAMENTE UMA LISTA, PORÉM NÃO ACEITA VALORES DUPLICADOS
//PARA CRIAR UM SET, DEVE-SE TIPAR O SEU CONJUNTO

void main() {
  //! CRIANDO UM SET
  print('--- CRIANDO UM SET --- ');
  var numeros = <int>{1, 2, 1, 2, 4};
  print(numeros); //SAIDA: {1,2,4}

  //! METODOS PRINCIPAIS
  print('--- DIFFERENCE() --- ');
  //DIFFERENCE() - Compara dois sets e retorna o que tem no primeiro e não tem no segundo
  var novo_numeros = <int>{1, 4, 5};
  print(numeros.difference(novo_numeros));

  print('--- UNION() --- ');
  //UNION() - Junta dois sets
  print(numeros.union(novo_numeros));

  print('--- INTERSECTION() --- ');
  //INTERSECTION() - Compara dois sets e retorna os elementos que tem em ambos
  print(numeros.intersection(novo_numeros));

  print('--- LOOKUP() --- ');
  //LOOKUP() - Funciona basicamente como um filtro, ele busca o elemento procurando e o retorna
  print(numeros.lookup(4));

  print('--- ElEMENTAT() --- ');
  //ELEMENTAT - extrai elementos do set
  print(numeros.elementAt(1));
}
