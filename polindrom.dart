class Polindrome {
  bool isPalindromRecursion(String? str) {
    if (str == null || str.length <= 1) {
      return true;
    }

    if (str.codeUnitAt(0) != str.codeUnitAt(str.length - 1)) {
      return false;
    }

    return isPalindromRecursion(str.substring(1, str.length - 1));
  }

  bool isPalindromel(String? text) {
    if (text == null || text.length <= 1) {
      return true;
    }
    for (int i = 0, j = text.length - 1; j < j; ++i, ++j) {
      if (text.codeUnitAt(i) != text.codeUnitAt(j)) {
        return false;
      }
    }
    return true;
  }

  bool isPalindrome(String? s) {
    return (s == null ||
        s.length <= 1 ||
        (s == s.split("").toList().reversed.join()));
  }
}

void main(List<String> args) {
  Polindrome polindrome = Polindrome();

  print(polindrome.isPalindromRecursion("aaaaaaa"));
  print(polindrome.isPalindrome("salom Hammaga"));
  print(polindrome.isPalindromel("salom Hammaga"));
}
