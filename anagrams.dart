import 'dart:collection';

class Anagrams {
  bool approach1(String s, String t) {
    if (s.length != t.length) {
      return false;
    } else {
      List<String> c = s.split("");
      List<String> d = t.split("");

      c.sort();
      d.sort();

      if (c == d) {
        return true;
      } else {
        return false;
      }
    }
  }

  bool approach2(String a, String b) {
    if (a.length != b.length) {
      return false;
    } else {
      List<int> m = List.filled(26, 0);
      List<int> n = List.filled(26, 0);

      for (var item in a.split("").toList()) {
        m[item.codeUnitAt(0) - 'a'.codeUnitAt(0)]++;
      }

       for (var item in b.split("").toList()) {
        n[item.codeUnitAt(0) - 'a'.codeUnitAt(0)]++;
      }

      for (int i = 0; i < 26; i++) {
        if (m[i] != n[i]) {
          return false;
        }
      }
      return true;
    }
  }

  bool approach3(String s, String t) {
    if (s.length != t.length) {
      return false;
    } else {
      List<int> a = List.filled(26, 0);
      List<int> b = List.filled(26, 0);
      int k = s.length;
      for (int i = 0; i < k; i++) {
        a[s.codeUnitAt(i) - "a".codeUnitAt(0)]++;
        b[t.codeUnitAt(i) - "a".codeUnitAt(0)]++;
      }

      for (int i = 0; i < 26; i++) {
        if (a[i] != b[i]) {
          return false;
        }
      }
      return true;
    }
  }

  // bool approach4(String s, String t) {
  //   if (s.length != t.length) {
  //     return false;
  //   } else {
  //     HashMap<String, int> nm = new HashMap();
  //     HashMap<String, int> kk = new HashMap();

  //     for (var item in s.split("").toList()) {
  //       nm.putIfAbsent(item, () => );
  //     }

  //   }
  // }

  // checking() {

  // }
}

void main(List<String> args) {
  String first = "deal";
  String second = "lead";

  Anagrams anagrams = Anagrams();

  print(anagrams.approach1(first, second));
  print(anagrams.approach2(first, second));
  print(anagrams.approach3(first, second));
}
