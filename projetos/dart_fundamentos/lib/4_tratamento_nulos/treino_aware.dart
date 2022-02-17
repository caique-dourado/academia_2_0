void main() {
  Pessoa p1 = Pessoa(nome: "Caique Dourado", idade: 25);
  p1.sexo = 'Masculino';
  print(p1.estado());
}

class Pessoa {
  String nome;
  int idade;
  String? sexo;

  Pessoa({required this.nome, required this.idade});

  estado() {
    String s = sexo ?? 'Sexo não informado';
    return "Nome: $nome, Idade: $idade, Sexo: $s";
  }
}
