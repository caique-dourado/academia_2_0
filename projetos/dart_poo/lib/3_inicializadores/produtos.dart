class Produto {
  //ATRIBUTOS FINAIS
  final int _id;
  final String nome;
  final double _preco;
//EM ATRIBUTOS FINAIS, USA-SE O INICIALIZADO :
  Produto({required id, required this.nome, required preco})
      : _id = id,
        _preco = preco {
    print(id);
    print(preco);
  }

//FABRICA

  factory Produto.fabrica(
      {required int id, required String nome, required double preco}) {
    return Produto(id: 1, nome: 'Estojo', preco: 8.75);
  }
}
