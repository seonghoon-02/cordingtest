class Solution {
  bool isRobotBounded(String instructions) {
    int a = 0;
    List<int> b = [0,0];
    
    List<String> stringList = instructions.split('');
    
    for(String i in stringList){
      switch(i){
        case 'L':
          a--;
          break;
        case 'R':
          a++;
          break;
        case 'G':
          if(a % 4 == 0){ //북
            b[1] += 1;
          }else if(a.abs() % 4 == 1){ //동
            b[0] += 1;
          }else if(a.abs() % 4 == 2){  //남
            b[1] -= 1;
          }else if(a.abs() % 4 == 3){  //서
            b[0] -= 1;
          }
          break;
      }
    }
    print(b);
    if(b[0] == 0 && b[1] == 0){
      return true;
    }else if(a % 4 == 0){
      return false;
    }
    return true;
  }
}