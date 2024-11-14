class Solution {
  int maximumWealth(List<List<int>> accounts) {
    int maxMoney = 0;
    int maxList = 0;
    int sumList = 0;
    
    for(int i = 0; i < accounts.length; i++){
      for(int j = 0; j < accounts[i].length; j++){
        sumList += accounts[i][j];
      }
      if(maxMoney < sumList){
        maxList = i;
        maxMoney = sumList;
      }
      sumList = 0;
    }
    return maxMoney;
  }
}