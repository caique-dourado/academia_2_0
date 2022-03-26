//late - uma inicialização tardia, sobrescreve todas as regras de null safety
// e de inicialização
class Cliente {
  late final String nome;
  Cliente({required String nome});

  Cliente.comNome({required String nome}) {
    nome = nome;
  }
}
