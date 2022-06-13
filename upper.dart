import 'utillsa.dart';

void main(List<String> args) {
  Upper upper = Upper();
  print(upper.toUpperCaseNew("abcAbs125"));
}

class Upper {
  String toUpperCaseNew(String str) {
    List<String> charText = str.split("").toList();

    for (var i = 0; i < charText.length; i++) {
      if (isLetter(charText[i].codeUnitAt(0)) &&
          isLowerCase(charText[i].codeUnitAt(0))) {
        charText[i] = charText[i].toUpperCase();
      }
    }

    return charText.join();
  }
}
