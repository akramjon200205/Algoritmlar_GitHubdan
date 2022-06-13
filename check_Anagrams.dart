import 'dart:collection';

void main(List<String> args) {}

bool? isAnagram(String s1, String s2) {
  int l1 = s1.length;
  int l2 = s2.length;
  s1.toLowerCase();
  s2.toLowerCase();

  Map<String, int> charAppearances = new HashMap();

  for (int i = 0; i < l1; i++) {
    String c = s1[i];

    charAppearances.addAll({c: 0});    
  }

  
}
