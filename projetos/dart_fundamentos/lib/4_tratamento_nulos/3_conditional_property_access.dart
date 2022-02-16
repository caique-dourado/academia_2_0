String? nomeCompleto;
void main() {
  //! USANDO O ACCESS OPERATOR (?)
  //! A DIREITA SÓ É EXECUTADA SE A ESQUERDA É != DE null
  print(nomeCompleto?.toUpperCase());

  //! USANDO O ACCESS + AWARE OPERATOR
  /*//! NESSE CASO, SE A ESQUERDA FOR == null, ENTÃO SERÁ ATRIBUIDO A 
    //! VARIAVEL A STRING DA ESQUERDA COMO VALOR
  */
  print(nomeCompleto?.toUpperCase() ?? 'Nome não preenchido');
}
