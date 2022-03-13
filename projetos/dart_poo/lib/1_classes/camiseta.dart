//Caracteristicas - Atributos
//Comportamentos - Metodos
class Camiseta {
  //Atributo
  String? tamanho;
  String? _cor;
  String? marca;

  //Atributos de classe
  static const String nome = 'Camiseta';

  // Metodos de classe
  static String recuperaNome() => nome;

  //Metodos
  String? get cor => _cor;

  set cor(String? cor) {
    if (cor == 'Verde') {
      throw Exception('Cor não pode ser Verde');
    }
  }

  String tipoLavagem() {
    if (marca == 'Nike') {
      return 'Não pode lavar na máquina';
    } else {
      return 'Pode lavar na máquina';
    }
  }
}
