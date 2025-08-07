import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("PENIS NA CHUVA DELICIA")),
        body: meuStetalles(),
      ),
    );
  }
}

class meuStetalles extends StatelessWidget {
  const meuStetalles({super.key});

  @override
  Widget build(BuildContext context) {
    int count = 0;
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
        ElevatedButton(
          onPressed: () {
            count++;
          },
          child: Text('pega aqui'),
        ),
      ],
    );
  }
}
