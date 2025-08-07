import 'package:flutter/material.dart';
import 'package:project/widgets/statfulwidgets.dart';

class meuStetalles extends StatefulWidget {
  const meuStetalles({super.key});

  @override
  State<meuStetalles> createState() => _meuStetallesState();
}

class _meuStetallesState extends State<meuStetalles> {
    int count = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Count: $count",
              style: TextStyle(fontSize: 50, color: Colors.indigoAccent),
            ),
          ],
        ),
        SizedBox(height: 25),
        Meustatefull(
          callback: () {
        setState((){
              count ++;
            });
          
          } 
        ),
        ElevatedButton(
          onPressed: () {
         
            setState((){
              count ++;
            });
          
          },
          child: Text('pega aqui'),
        ),
      ],
    );
  }
}