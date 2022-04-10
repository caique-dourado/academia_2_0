//Tipos genericos no dart

void main() {
  final caixa = Caixa<Bola>();

  caixa.adcionar(Bola());
  Bola? itemCaixa = caixa.getItens;
  print(caixa.alturaItem());

  final caixaBoneca = Caixa<Boneca>();

  caixaBoneca.adcionar(Boneca());
  Boneca? itemBoneca = caixaBoneca.getItens;
  print(caixaBoneca.alturaItem());
}

//TIPO GENERICO ESPECIFICO
class Caixa<I extends Item> {
  //Adcionano o tipo I (Tipo generico para itens)
  I? _item;

  void adcionar(I item) {
    _item = item;
  }

  I? get getItens => _item;

  alturaItem() {
    return _item?.altura() ?? 0;
  }
}

class Bola extends Item {
  @override
  altura() {
    return 20.0;
  }
}

class Boneca extends Item {
  @override
  altura() {
    return 60.0;
  }
}

class Telefone extends Item {
  @override
  altura() {
    return 80.0;
  }
}

//criando uma caixa abstrata para criar metodos para I

abstract class Item {
  double altura();
}
