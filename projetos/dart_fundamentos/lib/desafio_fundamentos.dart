void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  //! 3 - Apresente a quantidade de pacientes que moram em SP
  int qtdeSP = 0;
  var listPacientes20 = [];
  int qtdeDev = 0;
  int qtdeEst = 0;
  int qtdeDent = 0;
  int qtdeJorn = 0;
  for (var paciente in pacientes) {
    var listaPacientes = paciente.split('|');

    final idade = int.tryParse(listaPacientes[1]) ?? 0;

    if (idade > 20) {
      listPacientes20.add(listaPacientes[0]);
    }

    if (listaPacientes[2].toLowerCase().contains('desenvolvedor')) {
      qtdeDev++;
    } else if (listaPacientes[2].toLowerCase().contains('estudante')) {
      qtdeEst++;
    } else if (listaPacientes[2].toLowerCase().contains('dentista')) {
      qtdeDent++;
    } else if (listaPacientes[2].toLowerCase().contains('jornalista')) {
      qtdeJorn++;
    }

    if (listaPacientes[3].contains('SP')) {
      qtdeSP++;
    }
  }

  print('PACIENTE COM IDADE MAIOR DO QUE 20: $listPacientes20');
  print(
      'Qtde Dev: $qtdeDev | Qtde Estudante: $qtdeEst | Qtde Dentista: $qtdeDent | Qtde $qtdeJorn');
  print('QUANTIDADE DE PACIENTES QUE MORAM EM SP: $qtdeSP');
}
