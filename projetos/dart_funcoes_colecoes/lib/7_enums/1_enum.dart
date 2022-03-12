void main() {
  //CHAMANDO UM ENUM
  var cor = Cores.vermelho;

  if (cor == Cores.vermelho) {}

//Ao usar switch o autocomplite adciona todas as validações

  switch (cor) {
    case Cores.vermelho:
      // TODO: Handle this case.
      break;
    case Cores.azul:
      // TODO: Handle this case.
      break;
    case Cores.verde:
      // TODO: Handle this case.
      break;
    case Cores.lilas:
      // TODO: Handle this case.
      break;
  }
//!METODOS
  print('--- retorna o valor do atributo ---');
// .name - print o atributo
  print(Cores.vermelho.name);

  print('--- String em enum ---');
// .byName() - Tranforma uma String em um enum
  final lilas = 'lilas';
  var corLilas = Cores.values.byName(lilas);
  print(corLilas);

  print('--- Enum em Map ---');
// asMap() - Tranforma um enum em um map
//OBS.: os Indices passam a ser as chaves do map
  var mapCores = Cores.values.asMap();
  print(mapCores);
//asNameMap() - Transforma em map, porem as chaves são os atributos
  print('--- enum em Map (Atributos como chave) ---');
  var novoMapCores = Cores.values.asNameMap();
  print(novoMapCores);
}

//CRIANDO UM ENUM
enum Cores { vermelho, azul, verde, lilas }
