void main() {
  String nome = ''; //! Não aceita nulo
  nome.isEmpty;

  String?
      nomeNulo; //! Aceita nulo porém não pode chamar metodos e atributos antes de ser inicializada
  //* nomeNulo.isEmpty;

  //todo: Método de checagem de null
  if (nomeNulo != null) {
    nomeNulo.isEmpty;
  }

  //todo: Método de autopromoção
  nomeNulo = '';
  nomeNulo.isEmpty;
}
