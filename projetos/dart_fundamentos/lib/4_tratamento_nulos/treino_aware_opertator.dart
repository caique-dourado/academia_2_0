void main() {
  String? nomeFuncionario;
  var validaNome = nomeFuncionario ?? 'Nome não informado pelo usuário';

  print(validaNome);

  int? idade;
  idade = 13;

  print(idade ?? 'Idade não informada');
}
