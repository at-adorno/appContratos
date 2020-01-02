import 'package:flutter/material.dart';

class TelaContratos extends StatelessWidget{

  @override
  Widget build (BuildContext context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Divider(height: 10.0, color: Colors.black,),
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
              child: InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  //linkar o contrato aqui!!!
                },
                child: Icon(
                  Icons.check_circle,
                  size: 50
                ),
              )
            ),
          ],
        ),
        Divider(height: 10.0, color: Colors.black,),
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
              child: Icon(Icons.check_circle_outline, size: 50),
            ),
          ],
        ),
      ],
    );
  }
}