Iterable<int> subNumbers() sync* {
  yield 1;
  yield 2;
}

Iterable<int> numbers() sync* {
  yield* subNumbers(); 
  yield 3;
}

void main() {
  for (var n in numbers()) {
    print(n); // 1, 2, 3
  }
}
