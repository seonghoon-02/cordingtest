class Solution {
  String removeStars(String s) {
    List<String> result = [];
    List<String> sList = s.split('');
    for (int i = 0; i < sList.length; i++) {
      if (sList[i] == '*') {
        result.removeLast();
      } else {
        result.add(sList[i]);
      }
    }
    return result.join();
  }
}