class Solution {
  bool isMonotonic(List<int> nums) {
    int first = 0;
    int second = 1;
    for(int i = 2; i < nums.length; i++){
      if(nums[second] > nums[first]){
        if(nums[i] < nums[i-1]){
          return false;
        }
      }
      else if(nums[second] < nums[first]){
        if(nums[i] > nums[i-1]){
          return false;
        }
      }
      else{
        first += 1;
        second += 1;
      }
    }
    return true;
  }
}