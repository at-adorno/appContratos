import 'package:flutter/material.dart';

class TelaAcionamentos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.phonelink, size: 50),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'CTE201800001',
                  style: Theme.of(context).textTheme.headline,
                ),
                Text(
                  'Equipe de Grupo 01',
                )
              ],
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Equipe de Desenvolvimento SD2',
            ),
            Text(
              '27/08/2018',
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.check_circle, color: Colors.green,),
            Icon(Icons.folder, color: Colors.yellow,),
            Icon(Icons.attach_file, color: Colors.blue,),
            Icon(Icons.history),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.phonelink, size: 50),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'CTE201800005',
                  style: Theme.of(context).textTheme.headline,
                ),
                Text(
                  'Equipe de Grupo 04',
                )
              ],
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Equipe de Apoio ao Desenvolvimento SAD2',
            ),
            Text(
              '21/10/2018',
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.check_circle, color: Colors.green,),
            Icon(Icons.folder, color: Colors.yellow,),
            Icon(Icons.attach_file, color: Colors.blue,),
            Icon(Icons.history),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.phonelink, size: 50),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'CTE201800008',
                  style: Theme.of(context).textTheme.headline,
                ),
                Text(
                  'Equipe de Grupo 01',
                )
              ],
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Equipe de Desenvolvimento única',
            ),
            Text(
              '21/06/2019',
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.check_circle, color: Colors.green,),
            Icon(Icons.folder, color: Colors.yellow,),
            Icon(Icons.attach_file, color: Colors.blue,),
            Icon(Icons.history),
          ],
        ),
      ],
    );
  }
}