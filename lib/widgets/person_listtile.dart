import 'package:flutter/material.dart';
import 'package:project/model/person.dart';

class PersonListtile extends StatelessWidget {
  final Person person;
  const PersonListtile({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text("Id: ${person.id}"),
      title: Text(person.nome),
      subtitle: Text("Peso ${person.peso}"),
      trailing: Text("Altura: ${person.altura}"),
    );
  }
}
