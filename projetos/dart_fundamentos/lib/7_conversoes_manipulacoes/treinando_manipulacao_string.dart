// 1 Criar uma lista clientes que deve ter 5 clientes, no formato: [nome|cpf|idade|sexo]
// 2 Separara cada cliente afim de obter apenas seu nome

void main() {
  var clientes = [
    'Marcos Andre|123456789-10|26|M',
    'Luis Brasil|333456898-99|7|F',
    'Josefa Pinheiro|109876543-21|28|M',
    'Malu Magalhães|887653291-00|64|M',
    'Juliana|999765289-90|26|F',
  ];
  for (var nome in clientes) {
    var listaNomes = nome.split('|');
    var primeiroNome = listaNomes.first;

    print(primeiroNome);
  }
}
