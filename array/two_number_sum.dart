void main() {



  //FIRST TEST
  //[3, 5, -4, 8, 11, 1, -1, 6],10

  //SECONT TEST

  print(TwoNumberSum([1, 2, 3, 4, 5, 6, 7, 8, 9],17));
}

List TwoNumberSum(List<int> array, int target) {
  int left = 0;
  int right = array.length - 1;
  int sum;
  array.sort();
  List<int> res = [];

  while (left < right) {
    sum = array[left] + array[right];

    if (sum == target) {
      res.addAll([array[left], array[right]]);
      return res;
    } else if (sum < target) {
      left += 1;
    } else {
      right -= 1;
    }
  }

  return res;
}
