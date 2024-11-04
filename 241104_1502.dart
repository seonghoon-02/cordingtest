class Solution {
  bool canMakeArithmeticProgression(List<int> arr) {
    bool result = true;
    int a = 0;
    arr.sort();
    a = arr[1] - arr[0];
    
    for(int i = 1; i < arr.length; i++){
      if(a != (arr[i] - arr[i-1])){
        result = false;
        return result;
      };
    }
    return result;
  }
}