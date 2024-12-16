class Solution {
  int largestAltitude(List<int> gain) {
        int maxHeight = 0;
    int sum = 0;

    for (int i = 0; i < gain.length; i++) {
      sum += gain[i];
      if (sum > maxHeight) {
        maxHeight = sum;
      }
    }

    return maxHeight;
  }
}