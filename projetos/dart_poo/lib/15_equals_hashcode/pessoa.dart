class Pessoa {
  String nome;
  String email;

  Pessoa({required this.nome, required this.email});

//A implementação do equals deve ser feita somente quando a comparação for
//baseada no estado do objeto (Nesse caso, estado nome e estado email)
//!Sempre que sobreescrever o equals deve ser feita a igualdade do hashcode
  /* @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    if (other is Pessoa) {
      if (other.nome == nome) {
        if (other.email == email) {
          return true;
        } else {
          return false;
        }
      } else {
        return false;
      }
    } else {
      return false;
    }
  } */

  //!De uma forma mais elegante
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Pessoa && other.nome == nome && other.email == email;
  }

  @override
  int get hashCode => nome.hashCode ^ email.hashCode;

  //Corrigindo o Instance of 'NomeDaClasse' (basta sobreescrer o toString())
  @override
  String toString() {
    // TODO: implement toString
    return '''
      Pessoa:
        Nome: $nome
        Email: $email
''';
  }
}
