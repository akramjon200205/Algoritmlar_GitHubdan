import 'utillsa.dart';

void main(List<String> args) {
  print(toLowerCase("hAmMaGa SaloM"));
}

String toLowerCase(String text) {
  List<String> charText = text.split("").toList();

  for (int i = 0; i < charText.length; i++) {
    if (isLetter(charText[i].codeUnitAt(0)) &&
        isUpperCase(charText[i].codeUnitAt(0))) {
      charText[i] = charText[i].toLowerCase();
    }
  }

  return charText.join();
}
