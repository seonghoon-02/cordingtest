class Solution {
  int pivotIndex(List<int> nums) {
    int sum = 0; //nums 합계
    int leftSum = 0;
  

    //nums 합계
    for (int i = 0; i < nums.length; i++) {
      sum += nums[i];
    }
    
    for (int i = 0; i < nums.length; i++) {
      int rightSum = sum - leftSum - nums[i];
      if(leftSum == rightSum){
        return i;
      }
      leftSum += nums[i];
    }

    return -1;
  }
}