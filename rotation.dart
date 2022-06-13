class Rotate {
  String rotation(String s, int n) {
    return s.substring(n) + s.substring(0, n);
  }

  void rotation2(List<String> value, int n) {
    reverse(value, 0, n - 1);
    reverse(value, n, value.length - 1);
    reverse(value, 0, value.length - 1);
  }

  void reverse(List<String> values, int from, int to) {
    while (from < to) {
      String temp = "";
      temp = values[from];
      values[from] = values[to];
      values[to] = temp;
      from++;
      to--;
    }
  }
}

void main(List<String> args) {
  Rotate rotate = Rotate();

  print(rotate.rotation("abcdef", 2));

  List<String> values = "abcdef".split("").toList();

  Rotate().rotation2(values, 2);
}
