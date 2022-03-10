//TRATAMENTOS DE ERROS

void main() {
  //! ESTRUTURA BASICA try catch
  print('--- TRY CACTH ---');
  var idade = '19 anos';

  String? nome;

  try {
    int.parse(idade);
  } catch (e) {
    print('Idade não pode ser convertida');
  }

  print('--- TRY ON CATCH ---');
  // TRATANDO VARIOS ERROS
  // on tipoDoError catch(e){} - Trata o erro por tipo
  // EXCESSÕES POR NIVEL DE ERRO
  try {
    int.parse(idade);
    nome!.toLowerCase();
  } on FormatException catch (e) {
    print('Error ao converter idade');
  } on TypeError catch (e) {
    print('Error ao converter idade');
  } catch (e) {
    print('Erro ao executar o programa');
  }
}
