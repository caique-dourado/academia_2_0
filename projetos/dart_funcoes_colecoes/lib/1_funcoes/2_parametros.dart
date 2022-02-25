void main() {
  //Parametros Obrigatorios por Default
  print(somarNumeros(50, 20));

  // Parametros Nomeados {}
  print(somarNumerosNomeadoObrigatorio(numero1: 40, numero2: 60));
  print(somarNumeroNomeadoDefault(numero2: 50)); // numero1 já está atribuido
  print(somarNumerosNullSafety());

  // Paramentros Opcionais []

  somarNumerosOpcionais();
  somarNumerosOpcionais(100);
  somarNumerosOpcionais(100, 200);

  //Revisão
  dadosUsuario('Caique Dourado');
  dadosUsuario('Caique Dourado', 26);

  dadosUsuarioNormaisComNomeados(1, nome: 'Caique', idade: 27);
}

////////////////////////////////////////////////////////
///////////////////////////////////////////////////////
// --- PARAMETROS OBRIGATORIOS POR DEFAULT---
int somarNumeros(int numero1, int numero2) {
  return numero1 + numero2;
}

//---------- PARAMETROS NOMEADOS -------------
int somarNumerosNomeadoObrigatorio(
    {required int numero1, required int numero2}) {
  return numero1 + numero2;
}

int somarNumeroNomeadoDefault({numero1 = 0, required int numero2}) {
  return numero1 + numero2;
}

double somarNumerosNullSafety({double? numero1, double? numero2}) {
  if (numero1 != null && numero2 != null) {
    return numero1 + numero2;
  }
  return 0;
}

// --------- PARAMETROS OPCIONAIS ---------
//! TEM QUE FAZER A VERIFICAÇÃO DE NULL SAFETY
int somarNumerosOpcionais([int? numero1, int? numero2]) {
  if (numero1 != null && numero2 != null) {
    return numero1 + numero2;
  }
  return 0;
}

//REVISÃO
// Nome é obrigatorio, idade é opcional
void dadosUsuario(String nome, [int? idade]) {}

//MAIS USADO NO FLUTTER
void dadosUsuarioNormaisComNomeados(int numero,
    {required String nome, int? idade}) {}
