class Solution {
  int largestPerimeter(List<int> nums) {
        nums.sort((a,b) => b.compareTo(a));
    for(int i = 0; i + 2 < nums.length; i++){
      if(nums[i] < nums[i + 1] + nums[i + 2]){
        return nums[i] + nums[i + 1] + nums[i + 2];
      }
    }
    return 0;
  }
}