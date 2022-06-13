void main(List<String> args) {
  print(hasVowels("Akramjon"));
}

int countVowels(String input) {
  final List<String> VOWELS = ['a', 'i', 'e', 'o', 'u'];
  int count = 0;

  List<String> charText = input.toLowerCase().split('');

  for (String element in charText) {
    if (VOWELS.contains(element)) {
      count++;
    }
  }

  return count;
}

bool hasVowels(String input) {
  return countVowels(input) > 0;
}
