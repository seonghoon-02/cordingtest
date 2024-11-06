class Solution {
  int romanToInt(String s) {
    Map<String, int> list = {'I':1,'V':5,'X':10,'L':50,'C':100,'D':500,'M':1000};
      
    int current = 0;
    int next = 0;
    int result = 0;
    List sList = s.split('');
      
    for(int i = 0; i < sList.length; i++){
        if(i == sList.length - 1){
          current = list[sList[i]]!;
          result += current;
          return result;
        }
        current = list[sList[i]]!;
        next = list[sList[i + 1]]!;
        if(current < next){
          result += (next - current);
          i++;
        }else{
          result += current;
        }
      }
      return result;
  }
}