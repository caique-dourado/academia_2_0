void main() {
  somarArrow(40, 65);

//! FUNCOES ANONIMAS ()
//São funcões armazendas em variáveis (estas funcões não tem nomes)
  () {
    print('Ola mundo');
  }();

  var nome = ((String nomeCompleto) {
    return nomeCompleto;
  });

  print(nome('Caique Dourado'));
}

//! FUNCOES ARROW =>
//Usada somente para funções simples
int somarArrow(int numero1, int numero2) => numero1 + numero2;
