import 'camiseta.dart';

void main() {
  var camisetaNike = Camiseta();
  camisetaNike.tamanho = 'G';
  camisetaNike.cor = 'Preta';
  camisetaNike.marca = 'Nike';

  print('''
      ${Camiseta.nome}
        Tamanho: ${camisetaNike.tamanho}
        Cor: ${camisetaNike.cor}
        Marca: ${camisetaNike.marca}
        Tipo de Lavagem: ${camisetaNike.tipoLavagem()}
      ''');
  var camisetaAdidas = Camiseta();
  camisetaAdidas.tamanho = 'G';
  camisetaAdidas.cor = 'Verde';
  camisetaAdidas.marca = 'Adidas';

  print('''
      ${Camiseta.nome}
        Tamanho: ${camisetaAdidas.tamanho}
        Cor: ${camisetaAdidas.cor}
        Marca: ${camisetaAdidas.marca}
        Tipo de Lavagem: ${camisetaAdidas.tipoLavagem()}
      ''');
}
