void main() {
  final int idade = 16;
  var validacao =
      (idade >= 18) ? 'uau, Você já é adulto' : 'Ainda é um bebezão';

  print(validacao);

  var nome = 'Caique';

  var nomeCompleto = (nome == 'Caique') ? '$nome Dourado' : 'Não é o Caique';
  print(nomeCompleto);

  var sexo = 'M';

  var validaSexo = (sexo.toLowerCase() == 'm')
      ? 'Sexo: ${sexo.toUpperCase()}'
      : 'Sexo: ${sexo.toUpperCase()}';

  print(validaSexo);
}
