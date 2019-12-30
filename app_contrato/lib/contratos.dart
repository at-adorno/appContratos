import 'package:flutter/material.dart';

class TelaContratos extends StatelessWidget{

  @override
  Widget build (BuildContext context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.list, size: 50),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Fóton - GO/GO',
                  style: Theme.of(context).textTheme.headline,
                ),
                Text(
                  '08664/2018',
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.check_box, size: 50),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.list, size: 50),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Fóton - BH/MG',
                  style: Theme.of(context).textTheme.headline,
                ),
                Text(
                  '08663/2018',
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.check_box_outline_blank, size: 50),
            ),
          ],
        ),
      ],
    );
  }
}