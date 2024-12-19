class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    List<List<int>> result = [];
    List<int> num1 = [];
    List<int> num2 = [];
    int maxLangth = max(nums1.length, nums2.length);

    for (int i = 0; i < maxLangth; i++) {
      if (i < nums1.length &&
          nums2.indexOf(nums1[i]) == -1 &&
          num1.indexOf(nums1[i]) == -1) {
        num1.add(nums1[i]);
      }
      if (i < nums2.length &&
          nums1.indexOf(nums2[i]) == -1 &&
          num2.indexOf(nums2[i]) == -1) {
        num2.add(nums2[i]);
      }
    }
    result.add(num1);
    result.add(num2);
    return result;
  }
}