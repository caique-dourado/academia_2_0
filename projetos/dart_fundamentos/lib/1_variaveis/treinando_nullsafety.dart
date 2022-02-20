String? nomeGlobal;
void main() {
  String corCaneta = 'azul';
  print(corCaneta.toUpperCase());

  String? corCaneta2;

  print(corCaneta2?.toUpperCase());

  var nomeLocal = nomeGlobal = 'Caique';

  print(nomeLocal.toUpperCase());
}
