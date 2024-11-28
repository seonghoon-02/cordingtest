String multiply(String num1, String num2) {
  int len1 = num1.length;
  int len2 = num2.length;
  List<int> result = List.filled(len1 + len2, 0);

  // 각 자리 숫자별 곱셈 수행
  for (int i = len1 - 1; i >= 0; i--) {
    for (int j = len2 - 1; j >= 0; j--) {
      int mul = (num1.codeUnitAt(i) - '0'.codeUnitAt(0)) * (num2.codeUnitAt(j) - '0'.codeUnitAt(0));
      int sum = mul + result[i + j + 1];
      
      result[i + j + 1] = sum % 10;
      result[i + j] += sum ~/ 10;
    }
  }

  // 결과 문자열로 변환
  String resultStr = result.join();
  int firstNonZero = resultStr.indexOf(RegExp(r'[1-9]'));
  
  return firstNonZero == -1 ? "0" : resultStr.substring(firstNonZero);
}