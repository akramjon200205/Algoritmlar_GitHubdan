import 'dart:html';

class Permute {
  String swapString(String a, int i, int j) {
    List<String> charList = a.split("").toList();
    String ch = charList[i];
    charList[i] = charList[j];
    charList[j] = ch;
    return charList.join();
  }

  generatePermutation(String text, int start, int end) {
    if (start == end - 1) {
      print(text);
    } else {
      for (var i = start; i < end; i++) {
        text = swapString(text, start, i);

        generatePermutation(text, start + 1, end);

        text = swapString(text, start, i);
      }
    }
  }
}

void main(List<String> args) {
  Permute generate = Permute();
  String str = "ABC";
  int len = str.length;
  print("All the permutations of the string are: ");

  generate.generatePermutation(str, 0, len);
}
