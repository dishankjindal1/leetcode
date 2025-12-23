// ignore_for_file: unused_local_variable, unused_import
import '../core/core.dart';

class Solution {
  String reverseVowels(String s) {
    List<String> vol = s.split('');
    const vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];

    for (var i = 0, j = vol.length - 1; j > i;) {
      if (!vowels.contains(vol[i])) {
        i++;
      } else if (!vowels.contains(vol[j])) {
        j--;
      } else {
        var temp = vol[i];
        vol[i] = vol[j];
        vol[j] = temp;
        i++;
        j--;
      }
    }

    return vol.join();
  }
}

void main() {
  final solution = Solution();

  final testcase1 = ('IceCreAm', 'AceCreIm');

  final testcase = testcase1;
  var result = solution.reverseVowels(testcase.$1);

  print("-> $result <- result");
  print("-> ${testcase.$2} <- expected");
}
