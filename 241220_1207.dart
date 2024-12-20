class Solution {
  bool uniqueOccurrences(List<int> arr) {
    Set<int> arrSet = arr.toSet();
    List<int> arrSetList = arrSet.toList();
    List<int> countList = [];
    Set<int> countListToSet;

    for (int i = 0; i < arrSetList.length; i++) {
      int count = 0;
      for (int j = 0; j < arr.length; j++) {
        if (arrSetList[i] == arr[j]) {
          count++;
        }
      }
      countList.add(count);
    }
    countListToSet = countList.toSet();

    if (countList.length == countListToSet.length) {
      return true;
    }

    return false;
  }
}