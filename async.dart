Iterable<dynamic> subNumbers() sync* {
  yield 1;
  yield 2;
  yield 2.5;
}

Iterable<dynamic> numbers() sync* {
  yield* subNumbers();
  yield 3;
}

void main() {
  for (var n in numbers()) {
    print(n); // 1, 2, 3
  }
}
