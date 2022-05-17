import 'package:dart_banco_dados/database.dart';
import 'package:mysql1/mysql1.dart';

Future<void> main() async {
  final database = Database();
  var mysqlConnection = await database.openConnection();

//!Criando querys na base
  //*INSERT
/*   var resultado = await mysqlConnection.query(
      'INSERT INTO aluno(id, nome) VALUES(?, ?)', [null, 'Aluno teste 1']);
  print(resultado.affectedRows); */

  //*SELECT
  var select = await mysqlConnection.query('SELECT * FROM aluno');
  for (var row in select) {
    print(row);
    print(row['nome']);
  }

  //*UPDATE
  await mysqlConnection
      .query('UPDATE aluno SET nome = ? WHERE id = 2', ['Academia do Flutter']);
//visualizando a alteração
  for (var row in select) {
    print(row);
  }

  //*DELETE
  await mysqlConnection.query('DELETE FROM aluno WHERE id=7');

  //*TRATAMENTO DE ERROS USA-SE TRY CACTH
  try {
    //PROVOCANDO UM ERRO
    await mysqlConnection
        .query('UPDATE aluno SET id = ? WHERE id = 2', ['Causando erro']);
  } on MySqlException catch (e) {
    print(e);
    print('Erro ao atualizar dados do aluno');
  }
}
