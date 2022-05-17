import 'package:dart_async/8_repositores/repositories/cidade_repositorys.dart';

Future<void> main() async {
  var cidadeRepository = CidadeRepository();

  try {
    var cidade = await cidadeRepository.buscarCidade();
    print(cidade);
  } catch (e) {
    print('Erro ao buscar cidade');
  }
}
