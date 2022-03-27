// ASSOCIAÇÃO  - QUANDO UMA COISA TEM UMA OUTRA COISA

class Pessoa {
  String? nome;
//! Composição -  Quando o atributo de associação é obrigatório!!!
  Cpf cpf = Cpf();
  Endereco endereco = Endereco();

  //! Agregação - Quando o atributo de associação não é obrigatório!!!
  Telefone? telefone;
}

class Cpf {}

class Endereco {}

class Telefone {}
