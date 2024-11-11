class Solution {
  bool judgeCircle(String moves) {
        List<String> a = moves.split('');
    bool result = false;
    int x = 0;
    int y = 0;
    
    for(String i in a){
      if(i == 'U'){
        y += 1;
      }else if(i == 'D'){
        y -= 1;        
      }else if(i == 'L'){
        x -= 1;        
      }else if(i == 'R'){
        x += 1;
      }
    } 
    if(x == 0 && y == 0){
        result = true;
      }    
    return result;
  }
}