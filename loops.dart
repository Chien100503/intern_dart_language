void main() {
  // FOR -IN
  var nums = [10, 20, 30];
  for (var n in nums) {
    print("Giá trị: $n");
  }

  // FOR
  List<int> numbers = [1, 2, 3]; // List là Iterable
  for (var i = 0; i < numbers.length; i++) {
    print("Index $i có giá trị ${numbers[i]}");
  }

  // // for (var n in numbers) {
  // //   print(n);
  // // }
  // numbers.forEach((n) => print(n));

  // var numbers = [10, 20, 30];
  // var it = numbers.iterator;

  // while (it.moveNext()) {
  //   print(it.current);
  // }
  // var scores = [9, 7, 8, 6, 10, 11, 4];
  // Iterable<int> goodScores = scores.where((s) => s >= 8);
  // print(goodScores.toList()); // [9, 8, 10]
  // var numbers = [1, 2, 3, 4, 5];
  // var result = numbers
  //     .where((n) => n.isEven)
  //     .map((n) => n * 10)
  //     .reduce((a, b) => a + b);
  // print(result);

  // ({String name, int age, String address, String gen}) record = (
  //   name: 'Heheh',
  //   address: 'abc',
  //   age: 12,
  //   gen: 'Nam',
  // );
  // print(record);
}
