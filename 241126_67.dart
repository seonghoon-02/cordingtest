String addBinary(String a, String b) {
  int i = a.length - 1;
  int j = b.length - 1;
  int carry = 0;
  StringBuffer result = StringBuffer();
  
  while (i >= 0 || j >= 0 || carry != 0) {
    int sum = carry;
    
    if (i >= 0) {
      sum += int.parse(a[i]);
      i--;
    }
    
    if (j >= 0) {
      sum += int.parse(b[j]);
      j--;
    }
    
    result.write(sum % 2);  // 현재 자리의 결과 추가
    carry = sum ~/ 2;       // 올림 설정
  }
  
  return result.toString().split('').reversed.join(); // 역순 반환
}