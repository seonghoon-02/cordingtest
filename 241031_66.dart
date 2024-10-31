class Solution {
  List<int> plusOne(List<int> digits) {
    String a = digits.join('');
    
    int b = int.parse(a);
    b = b+1;
    String c = b.toString();
    List<String> d = c.split('');
    List<int> result = [];
    
    for(var i in d){
      result.add(int.parse(i));
    }
    
    return result;
  }
}