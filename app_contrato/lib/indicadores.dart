import 'package:flutter/material.dart';
import 'package:app_contrato/modelo_indicadores.dart';


class TelaIndicadores extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<TelaIndicadores> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: prepareData.length,
        itemBuilder: (BuildContext context, int index) {
          return ExpansionPanelList(
            animationDuration: Duration(seconds: 1),
            children: [
              ExpansionPanel(
                body: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'FNS: ${prepareData[index].bodyModel.fns}',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        Text(
                          'Desempenho: ${prepareData[index].bodyModel.desempenho}',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Produtividade: ${prepareData[index].bodyModel.produtividade}',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Produto: ${prepareData[index].bodyModel.produto}',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Valor: ${prepareData[index].bodyModel.valor}',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                       ],
                      ),
                    ],
                  ),
                ),
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      prepareData[index].header,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  );
                },
                isExpanded: prepareData[index].isExpanded,
              )
            ],
            expansionCallback: (int item, bool status) {
              setState(() {
                prepareData[index].isExpanded = !prepareData[index].isExpanded;
                for (int i = 0; i < prepareData.length; i++){
                  if (i != index){
                    if (prepareData[i].isExpanded == true){
                      prepareData[i].isExpanded = !prepareData[i].isExpanded;
                    }
                  }
                }
              });
            },
          );
        },
      ),
    );
  }
  
  List<ItemModel> prepareData = <ItemModel>[
    ItemModel(header: 'Faturamento Janeiro 2020', bodyModel: BodyModel(
      fns: 1.03,
      desempenho: 1.06,
      produtividade: 1.60,
      produto: 1.0,
      valor: 0.9
      ),
    ),
    ItemModel(header: 'Faturamento Dezembro 2019', bodyModel: BodyModel(
      fns: 1.03,
      desempenho: 1.03,
      produtividade: 1.20,
      produto: 1.0,
      valor: 0.9
      ),
    ),
    ItemModel(header: 'Faturamento Novembro 2019', bodyModel: BodyModel(
      fns: 1.03,
      desempenho: 1.00,
      produtividade: 1.00,
      produto: 1.0,
      valor: 1.0
      ),
    ),
    ItemModel(header: 'Faturamento Outubro 2019', bodyModel: BodyModel(
      fns: 1.03,
      desempenho: 0.9,
      produtividade: 0.85,
      produto: 1.0,
      valor: 1.0
      ),
    ),
  ];
}