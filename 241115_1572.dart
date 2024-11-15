class Solution {
  int diagonalSum(List<List<int>> mat) {
    int total = 0;
    int listLength = mat.length;
    
    if(listLength == 1){
      return mat[0][0];
    }
    
    for(int i = 0; i < listLength; i++){
      total += mat[i][i];
      total += mat[i][listLength - 1 - i];
    }

    if(listLength % 2 != 0){
      int indexNum = listLength ~/ 2;

      total -= mat[indexNum][indexNum];
    }
    
    return total;
  }
}