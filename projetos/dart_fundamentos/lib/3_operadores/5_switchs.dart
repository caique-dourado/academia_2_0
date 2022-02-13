//! É uma condição onde se quer comparar uma coisa várias vezes
//! O switch é uma condição do tipo ==.
//* DICA: Sempre que tiver muitos if else, opte pelo uso do switch

void main() {
  final idade = 17;

  switch (idade) {
    case 18:
      print('Maior de idade');
      break;
    case 19:
      print('Maior de idade');
      break;
    default:
      print('Menor de idade');
      break;
  }

  //? Verificando duas condições de uma vez usando o switch

  switch (idade) {
    case 18:
    case 19:
      print('Maior de idade');
      break;
    default:
      print('Menor de idade');
      break;
  }
}
