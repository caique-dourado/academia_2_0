import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() {
  //buscaCep();
  //buscaPosts();
  //buscaCepError();
  //salvarPost();
  // atualizarPost();
}

//*SEMPRE DEVE-SE ADCIONAR OS HEADERS - CABECALHOS EM CADA REQUISICAO
//! Todo get() retorna uma String, portanto esta deve ser sempre tratada.
//criando uma função de get - ela é sempre async
buscaCep() async {
  var url = 'https://viacep.com.br/ws/01001000/json/';
  //buscando dados da url passada
  var response = await http.get(Uri.parse(url), headers: {
    'Content-type': 'aplication/json; charset=UTF-8',
  });
  //verificando a requisição pelo status code
  if (response.statusCode == 200) {
    //convertendo a string retornada em um json - que nada mais é do que um map
    var responseData = convert.jsonDecode(response.body);
    if (responseData is Map) {
      //printando o retorno do get
      print(responseData['cep']);
      print(responseData['logradouro']);
      print(responseData['localidade']);
    }
  }
}

//Get de uma list de json
Future<void> buscaPosts() async {
  var url = 'https://jsonplaceholder.typicode.com/posts';
  var response = await http.get(Uri.parse(url), headers: {
    'Content-type': 'aplication/json; charset=UTF-8',
  });

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is List) {
      //Como ele retorna uma list devemos usar o forEach() para percorrer
      responseData.forEach((element) => print(element['id']));
    }
  }
}

//Tratando erros
Future<void> buscaCepError() async {
  var url = 'https://viacep.com.br/ws/999999999/json/';

  var response = await http.get(Uri.parse(url), headers: {
    'Content-type': 'aplication/json; charset=UTF-8',
  });

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is Map) {
      print(responseData['cep']);
      print(responseData['logradouro']);
      print(responseData['localidade']);
    }
  } else {
    //! Visualizando o erro
    /*  print(response.statusCode);
    print(response.body);
    print(response.reasonPhrase); */
    //! Tratando o erro

    print('Erro na mensagem: bad request');
  }
}

//Post dados

Future<void> salvarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts';
  //Criando um map para enviar os dados
  var mapRequest = {'title': 'Post novo', 'body': 'Descricao do post', 'id': 1};
//convertendo o map para json
  var response = await http
      .post(Uri.parse(url), body: convert.jsonEncode(mapRequest), headers: {
    'Content-type': 'aplication/json; charset=UTF-8',
  });
  //obtendo status da requisição
  print(response.statusCode);
  print(response.body);
}

//atualizando dados
Future<void> atualizarPost() async {
  //No final da url deve-se adcionar o id a ser utilizado (/id)
  var url = 'https://jsonplaceholder.typicode.com/posts/1';
  var mapRequest = {
    'id': 1,
    'title': 'Post altualizado',
    'body': 'Descricao do post atualizado',
    'userId': 1
  };

  var response = await http
      .put(Uri.parse(url), body: convert.jsonEncode(mapRequest), headers: {
    'Content-type': 'aplication/json; charset=UTF-8',
  });
  print(response.statusCode);
  print(response.body);
}
