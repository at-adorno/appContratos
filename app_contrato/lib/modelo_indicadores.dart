class ItemModel {
  bool isExpanded;
  String header;
  BodyModel bodyModel;
  ItemModel({
    this.isExpanded: false,
    this.header,
    this.bodyModel
  });
}

class BodyModel {
  double fns;
  double desempenho;
  double produtividade;
  double produto;
  double valor;
  BodyModel({
    this.desempenho,
    this.fns,
    this.produtividade,
    this.produto,
    this.valor
  });
}