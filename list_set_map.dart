// void main() {
//   // ===== LIST =====
//   // Ordered, allows duplicates
//   List<int> numbers = [1, 2, 3, 3];
//   print("List: $numbers"); // [1, 2, 3, 3]
//   print("First item: ${numbers[0]}"); // 1

  // // ===== SET =====
  // // Unordered, unique elements
  // Set<String> fruits = {"apple", "banana", "apple"};
  // print("Set: $fruits"); // {apple, banana}
  // print("Contains banana? ${fruits.contains("banana")}"); // true

//   // ===== MAP =====
//   // Key–value pairs, keys must be unique
//   Map<String, dynamic> person = {"name": "Alice", "age": 25};
//   print("Map: $person"); // {name: Alice, age: 25}
//   print("Name: ${person["name"]}"); // Alice
//   person.forEach((key, value) {
//     print('$value');
//   });

//   print('${person.values.elementAt(1)}');
// }
void main() {
  List<int> numbers = [1, 2, 3, 3];

  print("List: $numbers"); // [1, 2, 3, 3]
  print("First item: ${numbers[0]}"); // 1

  // Kiểm tra List có phải Iterable không
  print(numbers is Iterable<int>); // true

  // Vì List là Iterable nên có thể dùng for-in
  for (var n in numbers) {
    print(n);
  }
}
