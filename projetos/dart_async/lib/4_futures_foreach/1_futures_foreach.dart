Future<void> main() async {
  var nomes = ['Capitão América', 'Tony Stark', 'Homem Formiga'];

  Future<String> saudacao(String nome) async {
    return Future.delayed(Duration(seconds: 1), (() => 'Olá $nome'));
  }

//Usando o for com await
  for (var nome in nomes) {
    print(await saudacao(nome));
  }
//usando o Future.forEach
  await Future.forEach<String>(nomes, (nome) async {
    print(await saudacao(nome));
  });

//Executando em paralelo usando o Future.wait()
  var nomesFuturo = nomes.map((nome) => saudacao(nome)).toList();
  var saudacaos = await Future.wait(nomesFuturo);
  print(saudacaos);
}
