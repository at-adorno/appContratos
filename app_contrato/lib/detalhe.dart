import 'package:flutter/material.dart';

class TelaDetalhes extends StatelessWidget{

  @override
  Widget build (BuildContext context){

    return Container(
      child: criaTabela(),
      );
  }

  criaTabela(){
    return Table(
      children: [
        _criaLinhaTabela('Número do Contrato; 08664/2018'),
        _criaLinhaTabela('Número do Processo; 5307.01.0872.00/2018'),
        _criaLinhaTabela('Número do Certame; 008/7066-2018'),
        _criaLinhaTabela('Número da Demanda; Não informado'),
        _criaLinhaTabela('Tipo Modalidade; Pregão Eletrônico'),
        _criaLinhaTabela('CNPJ; 38.022.174/0001-28'),
        _criaLinhaTabela('Razão Social; Fóton Informática S.A.'),
        _criaLinhaTabela('Valor Contrato Principal; R\$ 10.616.997,60'),
        _criaLinhaTabela('Início Vigência; 03/08/2018'),
        _criaLinhaTabela('Fim Vigência; 02/08/2020'),
      ],
    );
  }

  _criaLinhaTabela(String listaNomes){
    return TableRow(
      children: listaNomes.split(';').map((name){
        return Container(
          alignment: Alignment.topLeft,
          child: Text(
            name,
            style: TextStyle(fontSize: 15.0),
          ),
          padding: EdgeInsets.all(8.0),
        );
      }).toList(),
    );
  }
}