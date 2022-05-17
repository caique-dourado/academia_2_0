import 'dart:async';

/*É um padrão de projeto que tem a estrategia de esperar para despachar eventos em
um programa*/

//Filas de Event - São FIFO(First in First out) e  assincronas, tem baixa prioridade de execução. Deve executar processos de (HTTP, DB, Leitura)
//Filas Microtask - São FIFO e sincronas, tem alta prioridade de execução. Deve serem usadas para processos bem rapidos.
void main() {
  print('Inicio do main');

  scheduleMicrotask((() => print('MicroTask #1')));
  Future.delayed(Duration(seconds: 1), (() => print('Future #1 delayed')));
  Future(() => print('Future #2'));
  Future(() => print('Future #3'));

  scheduleMicrotask(() => print('MicroTask #2'));
  print('Fim do main');
}


//Microtask São prioritárias na ordem de execução
//Event só é executada após todas as Microtask serem executadas

//! Exemplos de microtask no código acima:
    //Main
    //MicroTask #1
    //Microtask #2
//! Exemplos de Event no código acima
    //Future.dalayed #1
    //Future #2
    //Future #3