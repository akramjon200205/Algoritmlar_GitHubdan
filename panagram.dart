import 'utillsa.dart';

void main(List<String> args) {
  print(isPangram("The quick brown fox jumps over the lazy dog"));
  print(isPangram("The quick brown fox jumps over the azy dog"));
}

bool isPangram(String text) {
  var marked = List<bool>.filled(26, false);
  List<String> charText = text.split('').toList();

  for (var element in charText) {
    int charCode = element.codeUnitAt(0);

    if (isLetter(charCode)) {
      int index = isUpperCase(charCode) ? charCode - 65 : charCode - 97;
      marked[index] = true;
    }
  }

  for (var type in marked) {
    if (!type) {
      return false;
    }
  }

  return true;
}
