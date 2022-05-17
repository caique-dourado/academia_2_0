//EXPLICANDO O TRANSACTION() - UMA TRANSAÇÃO SEGURA
import 'package:dart_banco_dados/database.dart';

Future<void> main() async {
  var database = Database();
  var conn = await database.openConnection();
  //o transaction(), recebe um parametro dynamic, portanto usa-se transaction(_)
  await conn.transaction((_) async {
    var result = await conn.query('SELECT * FROM conta_corrente');
    var saldo = result.first['saldo'];
    var saque = 100.00;
    conn.query(
        'UPDATE conta_corrente SET saldo = ? WHERE id= ?', [saldo - saque, 1]);
    conn.query('INSERT INTO tira_dinheiro(id, data_saque) VALUES(?,?)',
        [null, DateTime.now().toIso8601String()]);
  });

  var result = await conn.query('SELECT * FROM conta_corrente');
  var saldoAtual = result.first['saldo'];
  print('Seu saldo atual é de $saldoAtual');
}
