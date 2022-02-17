void main() {
  Pessoa p1 = Pessoa(nome: 'Luigi', idade: 35);
  p1.sexo = 'm';
  print(p1.estado());
}

class Pessoa {
  String nome;
  int idade;
  String? sexo;

  Pessoa({required this.nome, required this.idade});

  estado() {
    var s = sexo?.toUpperCase() ?? 'sexo não atribuido!';
    return "Nome: $nome, Idade: $idade, Sexo: $s";
  }
}
