class ReverseString {
  String reverse(String str) {
    return (str.split("").toList().reversed.join());
  }

  String reverse2(String? str2) {
    if (str2 == null || str2.isEmpty) {
      return str2!;
    }

    List<String> value = str2.split("");

    for (int i = 0, j = str2.length - 1; i < j; i++, j--) {
      String temp = value[i];
      value[i] = value[j];
      value[j] = temp;
    }

    return value.join();
  }
}

void main(List<String> args) {
  ReverseString reverseString = ReverseString();
  print(reverseString.reverse("abc123"));
  print(reverseString.reverse2("abc123"));
}
