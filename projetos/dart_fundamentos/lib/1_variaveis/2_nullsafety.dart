//! Variáveis Globais/Niveis Superior não podem ser atribuidas depois
//! Não é permitido
// String nomeSuperiorCompleto;
String? nomeSuperiorCompletoOpc;

void main() {
  //! Variáveis locais não precisam ser inicializadas de cara
  //! Podem ser criadas sem valor(null) e depois ser atribuido um valor
  String nomeCompleto;
  String? nomeCompletoOpc;
  nomeCompleto = 'Caique Dourado';
  print(nomeCompleto.length);

  //! Variáveis Locais nulas por padrão
  //! Se for atribuido um valor. automaticamente elas são promovidas pelo non-null
  nomeCompletoOpc = '';
  print(nomeCompletoOpc.length);

  //! Variaveis do tipo Global nunca sao promovidas a non-null
  nomeSuperiorCompletoOpc = '';
  //print(nomeSuperiorCompletoOpc.length);
}
