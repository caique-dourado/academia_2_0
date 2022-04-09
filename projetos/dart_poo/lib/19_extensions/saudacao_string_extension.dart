//extension adciona métodos dentro de classes que não se tem o código fonte
// usa on para dizer qual classe quer implementar o método
extension SaudacaoStringExtension on String {
  String saudacao() {
    return 'Olá $this, bem vindo(a) a Academia do Flutter';
  }
}
