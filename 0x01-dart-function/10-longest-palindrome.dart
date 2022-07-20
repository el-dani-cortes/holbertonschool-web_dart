String longestPalindrome(String str) {
  int len = str.length;
  int maxLength = 1, start = 0, flag = 1;
  String substr = '';

  if (len < 3) return 'none';
  for (int i = 0; i < len; i++) {
    for (int j = i; j < len; j++) {
      flag = 1;
      for (int k = 0; k < (j - i) / 2; k++)
        if (str[i + k] != str[j - k]) flag = 0;

      if (flag != 0 && (j - i) > maxLength) {
        start = i;
        maxLength = j - i + 1;
      }
    }
  }
  for (int i = start; i <= start + maxLength - 1; ++i) substr += str[i];
  if (substr.length < 3) return 'none';
  return substr;
}
