//Para otimizar o equal usa-se construtores const, o programa ganha mais
//performance.

class Pessoa {
  //atributos devem ser final
  final String nome;
  final int idade;

  const Pessoa({
    required this.nome,
    required this.idade,
  });
}
