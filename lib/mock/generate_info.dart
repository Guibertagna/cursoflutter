import 'package:faker/faker.dart' as faker_lib;
import 'package:project/model/person.dart';

List<Person> generateMockPersons(int quantity) {
  final faker = faker_lib.Faker();
  return List.generate(
    quantity,
    (index) => Person(
      id: index,
      nome: faker.person.name(),
      altura: faker.randomGenerator.integer(200, min: 140),
      peso: faker.randomGenerator.decimal(min: 50, scale: 50),
    ),
  );
}
