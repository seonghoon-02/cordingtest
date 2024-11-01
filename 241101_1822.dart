class Solution {
  int arraySign(List<int> nums) {
    int result = 0;
    int total = 1;
    for(int i in nums){
      total *= i;
    }
    
    if(total < 0){
      result = -1;
    }
    else if(total > 0){
      result = 1;
    }
    return result;
  }
}