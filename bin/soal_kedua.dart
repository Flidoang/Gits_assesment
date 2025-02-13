void main() {
  List<int> scores = [100, 100, 50, 40, 40, 20, 10];
  List<int> gitsScores = [5, 25, 50, 120];

  List<int> ranks = denseRanking(scores, gitsScores);

  print("Output: $ranks");
}

List<int> denseRanking(List<int> scores, List<int> gitsScores) {
  // Hapus duplikat dan urutkan skor secara menurun
  List<int> uniqueScores = scores.toSet().toList();
  uniqueScores.sort((a, b) => b.compareTo(a));

  int getRank(int score) {
    int left = 0;
    int right = uniqueScores.length;
    while (left < right) {
      int mid = (left + right) ~/ 2;
      if (uniqueScores[mid] <= score) {
        right = mid;
      } else {
        left = mid + 1;
      }
    }
    return left + 1;
  }

  List<int> ranks = gitsScores.map((score) => getRank(score)).toList();
  return ranks;
}
