class Solution {
  String reverseWords(String s) {
    String result = '';
    String sTrim = s.trim();
    List<String> sList = sTrim.split(' ');
    List<String> sList2 = [];
    for (int i = 0; i < sList.length; i++) {
      if (sList[i] != '') {
        sList2.add(sList[i]);
      }
    }
    result = sList2.reversed.join(' ');
    return result;
  }
}