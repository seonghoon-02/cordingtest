class Solution {
  bool isSubsequence(String s, String t) {
    int sIndex = 0;

    if (s.length == 0) {
      return true;
    }

    for (int i = 0; i < t.length; i++) {
      if (t[i] == s[sIndex]) {
        sIndex += 1;
      }
      if (sIndex == s.length) {
        return true;
      }
    }
    return false;
  }
}