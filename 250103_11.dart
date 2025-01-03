class Solution {
  int maxArea(List<int> height) {
    int maxArea = 0;
    int left = 0;
    int right = height.length - 1;
    while (left != right) {
      int min = 0;
      if (height[left] > height[right]) {
        min = height[right];
      } else {
        min = height[left];
      }
      int volume = min * (right - left);
      if (height[left] > height[right]) {
        right--;
      } else {
        left++;
      }
      if (maxArea < volume) {
        maxArea = volume;
      }
    }

    return maxArea;
  }
}