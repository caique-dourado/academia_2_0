//Toda vez que eu quiser ordenar meus cliente devo implementar a class
//Comparable com o tipo da class

class Cliente implements Comparable<Cliente> {
  String nome;
  String telefone;

  Cliente({required this.nome, required this.telefone});

  @override
  int compareTo(Cliente other) => nome.compareTo(other.nome);

  @override
  String toString() => 'Nome: $nome, Telefone: $telefone';
}
