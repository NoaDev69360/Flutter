import 'dart:io';

void main() {
  stdout.write('Veuillez entrer un nombre: ');
  String? numberInput = stdin.readLineSync();

  if (numberInput != null && int.tryParse(numberInput) != null) {
    int number = int.parse(numberInput);
    List<int> divisors = [];

    for (int i = 1; i <= number; i++) {
      if (number % i == 0) {
        divisors.add(i);
      }
    }

    print('Les diviseurs de $number sont : $divisors');
  } else {
    print('Veuillez entrer un nombre valide.');
  }
}