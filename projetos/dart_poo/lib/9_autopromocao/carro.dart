//! O QUE DIFERENCIA UMA CLASSE ABSTRATA DE UMA INTERFACE É QUE OS MÉTODOS
//! NÃO SÃO IMPLEMENTADOS

abstract class Carro {
  //use sempre abstract antes do tipo
  abstract int portas;
  abstract int pneus;
  abstract String motor;

  int velocidadeMaxima();
}
