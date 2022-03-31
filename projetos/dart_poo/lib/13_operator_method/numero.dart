class Numero {
  int i;

  Numero(this.i);

//criando um operator method

  Numero operator +(Numero numero2) {
    return Numero((i + numero2.i) * 2);
  }
}
