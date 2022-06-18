import 'dart:collection';

class HorsPollSearch {
  late HashMap<String, int> shiftValues;
  late int patternLength;
  int comparisons = 0;

  int findFirst(String pattern, String text) {
    return firstOccurrence(pattern, text, true);
  }

  int findFirstInsensitive(String pattern, String text) {
    return firstOccurrence(pattern, text, false);
  }

  int getLastComparisons() {
    return HorsPollSearch().comparisons;
  }

  int firstOccurrence(String pattern, String text, bool caseSensitive) {
    shiftValues = calcShiftValues(pattern);
    comparisons = 0;

    int textIndex = pattern.length - 1;
    while (textIndex < text.length) {
      int i = pattern.length - 1;
      while (i >= 0) {
        comparisons++;
        String patternChar = pattern[i];
        String textChar = text[(textIndex + i) - (pattern.length - 1)];
        if (!charEquals(patternChar, textChar, caseSensitive)) {
          textIndex += getShiftValue(text[textIndex]);
          break;
        }
        i--;
      }
      if (i == -1) {
        return textIndex - pattern.length + 1;
      }
    }
    return -1;
  }

  bool charEquals(String c1, String c2, bool caseSensitive) {
    if (caseSensitive) {
      return c1 == c2;
    }
    return c1.toLowerCase() == c2.toLowerCase();
  }

  HashMap<String, int> calcShiftValues(String pattern) {
    patternLength = pattern.length;
    HashMap<String, int> table = HashMap();

    for (int i = pattern.length - 2; i >= 0; i--) {
      String c = pattern[i];
      int finalI = i;

      table.putIfAbsent(c, () => pattern.length - 1 - finalI);
    }

    return table;
  }

  int getShiftValue(String c) {
    var item = shiftValues[c];
    if (shiftValues[c] != null) {
      return item!;
    } else {
      return patternLength;
    }
  }
}

void main(List<String> args) {
  HorsPollSearch horsPollSearch = HorsPollSearch();

  print(horsPollSearch.findFirst("a", "akramjon"));  
}
