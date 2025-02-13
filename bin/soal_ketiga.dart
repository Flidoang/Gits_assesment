void main() {
  List<String> testCases = ["{[()]}", "{[(])}", "{(([])[[]])[]}"];

  for (String test in testCases) {
    print(isBalancedBracket(test) ? "YES" : "NO");
  }
}

bool isBalancedBracket(String input) {
  List<String> stack = [];
  Map<String, String> bracketPairs = {
    ')': '(',
    '}': '{',
    ']': '[',
  };

  for (int i = 0; i < input.length; i++) {
    String char = input[i];

    if (bracketPairs.containsValue(char)) {
      stack.add(char);
    } else if (bracketPairs.containsKey(char)) {
      if (stack.isEmpty || stack.removeLast() != bracketPairs[char]) {
        return false;
      }
    }
  }

  return stack.isEmpty;
}
