// ignore_for_file: unused_local_variable, unused_import

import '../core/core.dart';

class Solution {
  (int, int) findRook(List<List<String>> board) {
    for (var i = 0; i < board.length; i++) {
      for (var j = 0; j < board.length; j++) {
        if (board[i][j] == 'R') return (i, j);
      }
    }
    return (-1, -1);
  }

  int numRookCaptures(List<List<String>> board) {
    var (rPosx, rPosy) = findRook(board);

    return validateAttack1(board, rPosx, rPosy, 0, 1) +
        validateAttack1(board, rPosx, rPosy, 0, -1) +
        validateAttack1(board, rPosx, rPosy, 1, 0) +
        validateAttack1(board, rPosx, rPosy, -1, 0);
  }

// variant 2 // it reduces boilerplate/redundant code
  int validateAttack1(
      List<List<String>> board, int rX, int rY, int dX, int dY) {
    int startX = rX + dX;
    int startY = rY + dY;

    while (startX >= 0 &&
        startX < board.length &&
        startY >= 0 &&
        startY < board.length) {
      var val = board[startX][startY];

      if (val == 'B') return 0;
      if (val == 'R') return 0;
      if (val == 'p') return 1;

      startX += dX;
      startY += dY;
    }

    return 0;
  }

  // variant 1
  int validateAttack(List<List<String>> board, int rPosx, int rPosy) {
    int count = 0;

    // up dir
    for (var i = rPosx - 1; i >= 0; i--) {
      if (board[i][rPosy] == '.')
        continue;
      else if (board[i][rPosy] == 'B')
        break;
      else if (board[i][rPosy] == 'R')
        break;
      else if (board[i][rPosy] == 'p') {
        count++;
        break;
      }
    }

    // down dir
    for (var i = rPosx + 1; i < board.length; i++) {
      if (board[i][rPosy] == '.')
        continue;
      else if (board[i][rPosy] == 'B')
        break;
      else if (board[i][rPosy] == 'R')
        break;
      else if (board[i][rPosy] == 'p') {
        count++;
        break;
      }
    }

    // right dir
    for (var i = rPosy + 1; i < board.length; i++) {
      if (board[rPosx][i] == '.')
        continue;
      else if (board[rPosx][i] == 'B')
        break;
      else if (board[rPosx][i] == 'R')
        break;
      else if (board[rPosx][i] == 'p') {
        count++;
        break;
      }
    }

    // left dir
    for (var i = rPosy - 1; i >= 0; i--) {
      if (board[rPosx][i] == '.')
        continue;
      else if (board[rPosx][i] == 'B')
        break;
      else if (board[rPosx][i] == 'R')
        break;
      else if (board[rPosx][i] == 'p') {
        count++;
        break;
      }
    }

    return count;
  }
}

void main() {
  final solution = Solution();

  final testcase1 = [
    [".", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", "p", ".", ".", ".", "."],
    [".", ".", ".", "R", ".", ".", ".", "p"],
    [".", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", "p", ".", ".", ".", "."],
    [".", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", ".", ".", ".", ".", "."]
  ];

  var result = solution.numRookCaptures(testcase1);

  print(result);
}
