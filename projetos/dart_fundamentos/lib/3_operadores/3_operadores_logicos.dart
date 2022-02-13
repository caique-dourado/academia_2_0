void main() {
  //? Temos 3 operadores lógicos: &&(E), ||(OU), !(NÃO)

  final idade = 18;
  String sexo = 'M';

  //! && (E): A condição só é realizada caso for verdadeira
  //! TRUE && TRUE = TRUE
  //! FALSE && TRUE = FALSE
  //! TRUE && FALSE = FALSE
  if (idade >= 18 && sexo == 'M') {}
//* -------------------------------------------------------------

  //! || (OU): Pelo menos uma da condições precisa ser verdadeira
  //! TRUE || TRUE = TRUE
  //! FALSE || TRUE = TRUE
  //! TRUE || FALSE = TRUE
  //! FALSE || FALSE = FALSE
  if (idade >= 18 || sexo == 'M') {}
//* -------------------------------------------------------------

  //! !(NÃO): Esse operador nega a condição
  //! !(TRUE && TRUE) = FALSE
  //! !(FALSE && TRUE) = TRUE
  //! !(TRUE && FALSE) = TRUE
  //! !(FALSE && FALSE) = FALSE
  if (!(idade >= 18 && sexo == 'M')) {}
}
