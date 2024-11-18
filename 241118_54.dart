List<int> spiralOrder(List<List<int>> matrix) {
  List<int> result = [];
  
  if (matrix.isEmpty) return result;

  int top = 0;
  int bottom = matrix.length - 1;
  int left = 0;
  int right = matrix[0].length - 1;

  while (top <= bottom && left <= right) {
    // 왼쪽에서 오른쪽으로 이동
    for (int i = left; i <= right; i++) {
      result.add(matrix[top][i]);
    }
    top++;

    // 위에서 아래로 이동
    for (int i = top; i <= bottom; i++) {
      result.add(matrix[i][right]);
    }
    right--;

    // 오른쪽에서 왼쪽으로 이동
    if (top <= bottom) {
      for (int i = right; i >= left; i--) {
        result.add(matrix[bottom][i]);
      }
      bottom--;
    }

    // 아래에서 위로 이동
    if (left <= right) {
      for (int i = bottom; i >= top; i--) {
        result.add(matrix[i][left]);
      }
      left++;
    }
  }

  return result;
}
