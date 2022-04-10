//Só são usados quando se tem uma regra de negocio por tras. Ex: nome tem que ser
//maior do que 3 caracteres
void main() {
  var p1 = Pessoa();
  p1.nome = 'Caique';
  print(p1.nome);
}

class Pessoa {
  String? _nome;

  String? get nome => _nome;
//Regra do negocio

  set nome(String? nome) {
    if (nome != null && nome.length > 3) {
      _nome = nome;
    }
  }
}
