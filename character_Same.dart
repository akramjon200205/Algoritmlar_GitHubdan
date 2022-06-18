import 'dart:io';

bool? isAllCharactersSame(String s) {
  for (int i = 1; i < s.length - 1; i++) {
    if (s[i] != s[0]) {
      return false;
    }
    return true;
  }
}

void main(List<String> args) {
  String s = stdin.readLineSync()!;
  assert(isAllCharactersSame(s) == true, "false");
  // assert(isAllCharactersSame("$s") != false, "true");

  print("true");

}

