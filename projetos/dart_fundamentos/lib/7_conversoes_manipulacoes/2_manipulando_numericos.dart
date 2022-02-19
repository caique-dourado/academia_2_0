void main() {
  //ALGUNS METODOS INTERESSANTES DE CONVERSÃO
  //! Convertendo uma String em numero
  var idadeString = '26';
  var idade = int.parse(idadeString);
  print(idade);
// TRATANDO UMA NUMERO EM STRING COM OUTRO CARACTERE (RETORNA NULL)
  var idadeString2 = '26b';
  var idade2 = int.tryParse(idadeString2);
  print(idade2);

//! ARREDONDAR
  var salario = 1578.76;
  print(salario.round());
  print(salario.roundToDouble());
//! ARREDONDADO EM NUMEROS DE CASA DECIMAIS DEPOIS DO .
  var pi = 3.1415926;
  print(pi.toStringAsFixed(2));

//? OS METODOS ACIMA PODE SER USADOS EM QUALQUER TIPO NUMERICO
}
