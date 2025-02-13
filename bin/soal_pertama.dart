import 'dart:io';

void main() {
  print("Masukkan nilai awal : ");
  int n = int.parse(stdin.readLineSync()!);
  String output = lazyCatererSequence(n);
  print("Output: $output");
}

String lazyCatererSequence(int n) {
  List<String> sequence = [];
  for (int i = 0; i < n; i++) {
    int value = (i * (i + 1)) ~/ 2 + 1;
    sequence.add(value.toString());
  }
  return sequence.join("-");
}
