class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
        List<bool> result = [];
    for(int i = 0; i < candies.length; i++){
      bool tempResult = true;
      int temp = candies[i] + extraCandies;
      for(int j = 0; j < candies.length; j++){
        if(temp < candies[j]){
           tempResult = false;
        }
      }
      result.add(tempResult);
    }
    return result;
  }
}