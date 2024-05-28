import 'dart:io';

void main() {
  stdout.write('Veuillez entrer un numéro: ');
  String? numberInput = stdin.readLineSync();
  int? number;

  if (numberInput != null && int.tryParse(numberInput) != null) {
    number = int.parse(numberInput);
    
    if (number % 2 == 0) {
      print('Vous avez choisi $number qui est un nombre pair.');
    } else {
      print('Vous avez choisi $number qui est un nombre impair.');
    }
  } else {
    print('Veuillez entrer un numéro valide.');
  }
}

