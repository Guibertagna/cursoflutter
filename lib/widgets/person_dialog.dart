import 'package:flutter/material.dart';
import 'package:project/extensions/extensions.dart';
import 'package:project/model/person.dart';
import 'package:project/widgets/defautl_dialog_container.dart';

class PersonDIalog extends StatelessWidget {
  final Person person;
  const PersonDIalog({super.key, required this.person});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefautlDialogContainer(child: Text("Id ${person.id}")),
            DefautlDialogContainer(child: Text("Nome: ${person.nome}")),
            DefautlDialogContainer(
              child: Text("Altura: ${person.altura.forHeight()}"),
            ),
            DefautlDialogContainer(
              child: Text("Pesp: ${person.peso.forWeight()}"),
            ),
          ],
        ),
      ),
    );
  }
}
