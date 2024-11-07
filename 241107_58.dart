class Solution {
  int lengthOfLastWord(String s) {
    int result = 0;
    String a = s.trim();
    List aList = a.split('');
    int b = 0;
    
    for(int i = 0; i < aList.length; i++){
      if(aList.indexOf(' ') == -1){
        return aList.length;
      }else if(aList[i] == ' '){
        b = i;
      }
    }
    result = aList.length - b - 1;
    return result;
  }
}