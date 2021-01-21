void main() {
  //[12, 3, 1, 2, -6, 5, 0, -8, -1, 6, -5],0
  //[12, 3, 1, 2, -6, 5, -8, 6],0
  print(ThreeNumberSum([12, 3, 1, 2, -6, 5, -8, 6],0));
}

List<List<int>> ThreeNumberSum(List<int> array, int target) {
  array.sort();

  List<List<int>> res = [];

  for (var i = 0; i < array.length; i++) {
    int left = 1 + i;
    int right = array.length - 1;

    while (left < right) {
      int sum;
      sum = array[i] + array[left] + array[right];

      if (sum == target) {
       
        res.add([array[i], array[left], array[right]]);
        left += 1;
        right += 1;
      } else if (sum < target) {
        left += 1;
      } else {
        right -= 1;
      }
    }
  }
  return res;
}
