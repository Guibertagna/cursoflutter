import 'package:flutter/material.dart';
import 'package:project/extensions/extensions.dart';
import 'package:project/widgets/costom_title.dart';
import 'package:project/widgets/person_dialog.dart';
import 'package:project/model/person.dart';

class CustomPersonTitle extends StatelessWidget {
  final Person person;
  const CustomPersonTitle({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return CustomTile(
      pertaaIsso: () {
        showDialog(
          context: context,
          builder: (context) {
            return PersonDIalog(person: person);
          },
        );
      },
      color: Colors.blue,
      leading: Text("Id: ${person.id}"),
      title: Text(person.nome, style: TextStyle(fontSize: 20)),
      subtitle: Text(
        "Peso: ${person.peso.forWeight()}",
        style: TextStyle(fontSize: 16),
      ),
      trailing: Text("Altura: ${person.altura.forHeight()}"),
    );
  }
}
