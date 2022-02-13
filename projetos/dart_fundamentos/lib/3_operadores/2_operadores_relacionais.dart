void main() {
  //? O dart possui 6 operadores usados para definir as regras de negócio
  //! == (igualdade), != (diferença), > (maior que), < (menor que), >= (maior ou igual), <= (menor ou igual)

  //* regra de negocio tirar habilitação
  final idade = 18;

  if (idade > 18) {
    print('Pode tirar a habilitação');
  }

  if (idade == 18) {
    print('Pode tirar a habilitação');
  }

  if (idade > 17) {
    print('Pode tirar a habilitação');
  }

  if (idade >= 18) {
    print('Pode tirar a habilitação');
  }
//* -------------------------------------------------------------
  //* regra de negócio petshop (cachorro)

  final tipoPet = 'gato';

  if (tipoPet != 'Cachorro') {
    print('Desculpa, não temos nada para o seu pet');
  }
}
