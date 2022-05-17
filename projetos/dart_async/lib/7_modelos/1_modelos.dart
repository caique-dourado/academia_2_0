import 'package:dart_async/7_modelos/class_user.dart';
import 'package:dart_async/7_modelos/classe_cidade.dart';
import 'package:http/http.dart';

void main() {
  //buscarCep();
  buscarUser();
}

Future<void> buscarCep() async {
  var url = 'https://viacep.com.br/ws/01001000/json/';
  var response = await get(Uri.parse(url),
      headers: {'Content-type': 'aplication/json; charset=UTF8'});
  if (response.statusCode == 200) {
    /*  var responseData = jsonDecode(response.body);
    if (responseData is Map) {
      print(responseData['cep']);
    } */
    //!ESTA È A FORMA CORRETA DE FAZER AS REQUISIÇÔES POR MEIO DE POO;
    var cidade = Cidade.fromJson(response.body);
    print(cidade.cep);
    print(cidade.logradouro);
    print(cidade.toMap());
    print(cidade.toJson());
  }
}

Future<void> buscarUser() async {
  var url = 'https://627c0fe4b54fe6ee00931091.mockapi.io/exemplo';
  var response = await get(Uri.parse(url));
  if (response.statusCode == 200) {
    var user = User.fromJson(response.body);
    print(user);
  }
}
