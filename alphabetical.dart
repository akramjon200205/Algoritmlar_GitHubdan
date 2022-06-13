import 'utillsa.dart';

void main(List<String> args) {
  print(isAlphabetical("123abc"));
  print(isAlphabetical("aBC"));
  print(isAlphabetical("abc"));
  print(isAlphabetical("xyzabc"));
  print(isAlphabetical("abcxyz"));
}

bool isAlphabetical(String s) {
  s = s.toLowerCase();

  for (int i = 0; i < s.length - 1; i++) {
    if (!isLetter(s[i].codeUnitAt(0)) ||
        !(s[i].codeUnitAt(0) <= s[i + 1].codeUnitAt(0))) {
      return false;
    }
  }
  return true;
}
