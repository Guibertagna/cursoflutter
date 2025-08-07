import 'package:flutter/material.dart';

class Meustatefull extends StatefulWidget {
  final void Function() callback;
  const Meustatefull({super.key,
  required this.callback});
  @override
  State<Meustatefull> createState() => _MeustatefullState();
}

class _MeustatefullState extends State<Meustatefull> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ElevatedButton(onPressed: () {
          widget.callback();
        } , child: Text("botão que meche"))
      ],

    );
  }
}