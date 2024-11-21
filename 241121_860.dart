class Solution {
  bool lemonadeChange(List<int> bills) {
    int fiveNum = 0;
    int tenNum = 0;
    
    for(int cash in bills){
      switch (cash){
        case 5:
          fiveNum++;
          break;
        case 10:
          fiveNum--;
          if(fiveNum < 0){
            return false;
          }
          tenNum++;
          break;
        case 20:
          if(tenNum > 0){
            tenNum--;
            fiveNum--;
          }else{
            fiveNum -= 3;
          }
          if(tenNum < 0 || fiveNum < 0){
            return false;
          }
          break;
      }
    }
    return true;
  }
}