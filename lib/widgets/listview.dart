import 'package:flutter/material.dart';
import 'package:project/mock/generate_info.dart';
import 'package:project/widgets/custom_person_title.dart';

class PersonsList extends StatelessWidget {
  const PersonsList({super.key});
  @override
  Widget build(BuildContext context) {
    final persons = generateMockPersons(22);
    return ListView.builder(
      itemCount: persons.length,
      itemBuilder: (context, index) {
        return CustomPersonTitle(person: persons[index]);
      },
    );
  }
}
