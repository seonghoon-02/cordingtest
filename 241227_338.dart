class Solution {
  List<int> countBits(int n) {
    List<int> result = [];
    for (int i = 0; i <= n; i++) {
      int count = 0;
      if (i == 0) {
        result.add(count);
        count = 0;
        continue;
      } else if (i == 1) {
        count++;
        result.add(count);
        count = 0;
        continue;
      }
      List<String> nList = i.toRadixString(2).split('');
      for (int j = 0; j < nList.length; j++) {
        if (nList[j] == '1') {
          count++;
        }
      }
      result.add(count);
    }

    return result;
  }
}