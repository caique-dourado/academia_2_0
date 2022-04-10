//Passa o construtor de uma class como se fosse uma funcao
void main() {
  final nomes = ['Rodrigo', 'Guilherme', 'Renato', 'Sandra'];
//new para construtores defaults
  final pessoas = nomes.map<Pessoa>(Pessoa.new).toList();
  for (var pessoa in pessoas) {
    print('Olá ${pessoa.nome}');
  }
}

class Pessoa {
  String nome;

  Pessoa(this.nome);
}
