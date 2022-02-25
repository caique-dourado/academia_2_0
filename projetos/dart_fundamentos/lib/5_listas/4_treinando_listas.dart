void main() {
  print('-------------------------');
  print('     LISTA DE ALUNOS     ');
  print('-------------------------');
  var nomesDeAlunos = <String>[
    'Marcos',
    'Antonio',
    'Felipe',
    'Mateus',
    'Junior'
  ];

  print(nomesDeAlunos);

//! Adcionando alunos
  print('-------------------------');
  print('     ADCIONANDO ALUNOS   ');
  print('-------------------------');

  nomesDeAlunos.addAll(['Jose', 'Lyanna', 'Fernanda', 'Juliana']);
  print(nomesDeAlunos);

  //! Removendo alunos
  print('-------------------------');
  print('     REMOVENDO  ALUNO   ');
  print('-------------------------');

  nomesDeAlunos.removeWhere((aluno) => aluno == 'Juliana');

  print(nomesDeAlunos);

  //! Identificando o primeiro e ultimo aluno
  print('-------------------------------');
  print('     PRIMEIRO E ULTIMO ALUNO   ');
  print('-------------------------------');

  print('Primeiro: ${nomesDeAlunos.first}');
  print('Ultimo: ${nomesDeAlunos.last}');

//! Adcionando uma matricula a cada aluno usando for in
  print('-------------------------------');
  print('          MATRICULAS           ');
  print('-------------------------------');
  var matriculas = [200, 388, 453, 213, 22, 33, 12, 32];
  var count = matriculas.length;

  var alunosMatriculas = [
    for (var i = 0; i < count; i++) '${nomesDeAlunos[i]} - ${matriculas[i]}',
  ];

  print(alunosMatriculas);
}
