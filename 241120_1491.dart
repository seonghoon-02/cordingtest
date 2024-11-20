class Solution {
  double average(List<int> salary) {
    double result = 0;
    salary.sort();
    salary.removeLast();
    salary.removeAt(0);
    
    int sum = salary.reduce((a, b) => a + b);
    result = sum / salary.length;
    return result;
  }
}