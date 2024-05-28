void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> commonElements = [];

  for (int firstNumber in a) {
    for (int secondNumber in b) {
      if (firstNumber == secondNumber) {
        bool alreadyAdded = false;
        for (int element in commonElements) {
          if (element == firstNumber) {
            alreadyAdded = true;
            break;
          }
        }
        if (!alreadyAdded) {
          commonElements.add(firstNumber);
        }
      }
    }
  }

  print('Les éléments communs sont : $commonElements');
}
