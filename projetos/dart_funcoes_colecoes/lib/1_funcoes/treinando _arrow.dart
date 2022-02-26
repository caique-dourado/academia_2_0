//! FUNCOES ARROW SÃO APENAS PARA ROTINAS SIMPLES (O INDICADO)
void main() {
  var numeroAleatorio = (({required int n1}) {
    print('Inciando contade de 0 a $n1');
    int n = 0;
    while (n <= n1) {
      print(n);
      n++;
    }
  });
  numeroAleatorio(n1: 10);

  //FUNCAO COMO PARAMETRO
  String nomeCompleto(NomeDaFuncao nomeCompleto) {
    return nomeCompleto(nome: 'Caique', sobrenome: 'Dourado');
  }

  print(
      nomeCompleto(({String? nome, String? sobrenome}) => '$nome $sobrenome'));

  print(funcaoNome('Caique Dourado - Funcao Arrow'));
}

//TypeDef é definido fora de uma função
typedef NomeDaFuncao = String Function({String? nome, String? sobrenome});

var funcaoNome = ((String nome) => nome);
