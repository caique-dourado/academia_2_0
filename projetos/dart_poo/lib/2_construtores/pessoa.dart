class Pessoa {
  String? nome;
  int? idade;
  String? sexo;

  Pessoa({required this.nome, required this.idade, required this.sexo});

  //Construtor nomeado
  Pessoa.semNome({required this.idade, required this.sexo});

  Pessoa.vazia();

  //Construtor Factory - Executa o bloco e somente depois cria a instancia
  //É utilizado quando se tem uma regra de negocio para criação da classe!!!
  //ex: verificar se tem uma conexao já aberta antes de abrir uma nova conexao
  // com o banco de dados...

  factory Pessoa.fabrica(String nomeConstruct) {
    var nome = nomeConstruct + '_Fabrica';
    var pessoa = Pessoa.vazia();
    pessoa.nome = nome;

    return pessoa;
  }
}
