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
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Contratos', icon: Icons.list),
  const Choice(title: 'Detalhe', icon: Icons.subject),
  const Choice(title: 'Acionamentos', icon: Icons.phonelink),
  const Choice(title: 'Indicadores', icon: Icons.thumbs_up_down),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 128.0, color: textStyle.color),
            Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(TabbedAppBarSample());
}