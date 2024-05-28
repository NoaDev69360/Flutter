import 'dart:io';

void main() {
  stdout.write('Veuillez entrer votre âge: ');
  String? ageInput = stdin.readLineSync();
  int age;

  if (ageInput != null && int.tryParse(ageInput) != null) {
    age = int.parse(ageInput);
  } else {
    print('Veuillez entrer un âge valide.');
    return;
  }

  int yearsTo100 = 100 - age;
  print('vous aurez 100 ans dans $yearsTo100 ans.');
}
