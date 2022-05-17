import 'package:mysql1/mysql1.dart';

class Database {
  Future<MySqlConnection> openConnection() async {
    var settings = ConnectionSettings(
        host: 'localhost',
        port: 3306,
        user: 'root',
        password: 'academiadoflutter',
        db: 'dart_mysql');
    return await MySqlConnection.connect(settings);
  }
}
