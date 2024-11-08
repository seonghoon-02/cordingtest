class Solution {
  int calPoints(List<String> operations) {
        int result = 0;
    List a = [];
    
    for(int i = 0; i < operations.length; i++){
      switch(operations[i]){
        case 'C':
          a.removeAt(a.length-1);
          break;
        case 'D':
          a.add(a[a.length-1] * 2);         
          break;
        case '+':
          a.add(a[a.length-1] + a[a.length-2]);
          break;
        default:
          a.add(int.parse(operations[i]));
      }
    }
    for(int i in a){
      result += i;
    }
    return result;
  }
}