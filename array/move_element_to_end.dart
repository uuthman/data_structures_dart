void main() {
  print(MoveElementToEnd([2,1,2,2,2,3,4,2], 2));
}

List<int> MoveElementToEnd(List<int> array, int moveTo) {
  int left = 0;
  int right = array.length - 1;

  while (left < right) {
    while (left < right && array[right] == moveTo) {
      right -= 1;
    }

    if (array[left] == moveTo) {
      var c = array[left];
      array[left] = array[right];
      array[right] = c;
    }
    left += 1;
  }

  return array;
}
