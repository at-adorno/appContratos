import 'package:flutter/material.dart';
import 'package:app_contrato/acionamentos.dart';
import 'package:app_contrato/contratos.dart';
import 'package:app_contrato/detalhe.dart';
import 'package:app_contrato/indicadores.dart';

class TabbedAppBarSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('app_contrato'),
            leading: Image.asset('assets/images/caixa_logo.png', fit: BoxFit.fill),
            centerTitle: true,
            backgroundColor: Colors.blue,
            elevation: 5,
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.orange,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 10,
              tabs: choices.map((Choice choice) {
                return Tab(
                  text: choice.title,
                  icon: Icon(choice.icon),
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: choices.map((Choice choice) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: ChoiceCard(choice: choice),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({this.title, this.icon, this.tela});

  final String title;
  final IconData icon;
  final int tela;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Contratos', icon: Icons.list, tela: 1),
  const Choice(title: 'Detalhe', icon: Icons.subject, tela: 2),
  const Choice(title: 'Acionamentos', icon: Icons.phonelink, tela: 3),
  const Choice(title: 'Indicadores', icon: Icons.thumbs_up_down, tela: 4),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: _selecionaTela(choice.tela),
    );
  }
}

_selecionaTela(int nTela){
  if (nTela == 1){return TelaContratos();}
  else if (nTela == 2){return TelaDetalhes();}
  else if (nTela == 3){return TelaAcionamentos();}
  else if (nTela == 4){return TelaIndicadores();}
}

void main() {
  runApp(TabbedAppBarSample());
}