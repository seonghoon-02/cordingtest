String tictactoe(List<List<int>> moves) {
  // 3x3 보드 초기화
  List<List<String>> board = List.generate(3, (_) => List.filled(3, ''));

  // A와 B가 번갈아가며 수를 둡니다.
  for (int i = 0; i < moves.length; i++) {
    int row = moves[i][0];
    int col = moves[i][1];
    board[row][col] = (i % 2 == 0) ? 'A' : 'B';
  }

  // 가로, 세로, 대각선 승리 조건 검사 함수
  bool checkWin(String player) {
    // 가로와 세로 검사
    for (int i = 0; i < 3; i++) {
      if ((board[i][0] == player && board[i][1] == player && board[i][2] == player) ||
          (board[0][i] == player && board[1][i] == player && board[2][i] == player)) {
        return true;
      }
    }
    // 대각선 검사
    if ((board[0][0] == player && board[1][1] == player && board[2][2] == player) ||
        (board[0][2] == player && board[1][1] == player && board[2][0] == player)) {
      return true;
    }
    return false;
  }

  // 승리자 확인
  if (checkWin('A')) return "A";
  if (checkWin('B')) return "B";

  // 남은 칸이 없으면 무승부, 그렇지 않으면 진행 중
  return moves.length == 9 ? "Draw" : "Pending";
}