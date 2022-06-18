void main(List<String> args) {
  print(lengthOfLongestSubstring("qwertyerrwertyqwertyerr"));
}

int lengthOfLongestSubstring(String s) {
  int max = 0, start = 0, i = 0;
  Map<String, int> map = {};

  while (i < s.length) {
    String temp = s[i];

    if (!map.containsKey(temp))
      map[temp] = 0;
    else if (s[start] == temp)
      start++;
    else if ([i - 1] == temp) {
      if (max < map.length) max = map.length;
      map = new Map();
      start = i;
      i--;
    } else {
      if (max < map.length) max = map.length;
      while (s[start] != temp) {
        map.remove(s[start]);
        start++;
      }
      start++;
    }

    i++;
  }
  if (max < map.length) max = map.length;
  return max;
}
