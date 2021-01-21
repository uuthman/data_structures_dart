
void main() {
  print(IsValidSequence([5, 1, 22, 25, 6, -1, 8, 10], [1, 6, -1, 10]));
}

bool IsValidSequence(List<int> array, List<int> sequence) {
  int a = 0;
  int s = 0;

  while (a < array.length && s < sequence.length) {
    if (array[a] == sequence[s]) {
      s += 1;
    }
    a += 1;
  }
  return s == sequence.length;
}
