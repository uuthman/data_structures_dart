void main() {
  print(SmallestDifference([-1, 5, 10, 20, 28, 3], [26, 134, 135, 15, 17]));
}

List<int> SmallestDifference(List<int> array1, List<int> array2) {
  array1.sort();
  array2.sort();
  int a1 = 0;
  int a2 = 0;
  double smallest = double.infinity;
  double current = double.infinity;
  List<int> smallestPair = [];

  while (a1 < array1.length && a2 < array2.length) {
    int f = array1[a1];
    int s = array2[a2];
    if (f < s) {
      current = s.toDouble() - f.toDouble();
      a1 += 1;
    } else if (s < f) {
      current = f.toDouble() - s.toDouble();
      a2 += 1;
    } else {
      List<int> res = [];
      res.addAll([f, s]);
      return res;
    }

    if (smallest > current) {
      smallest = current;
      smallestPair = [f,s];
    }
  }

  return smallestPair;
}
