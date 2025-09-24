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
// void main() {
//   List<int> numbers = [1, 2, 3, 3];

//   print("List: $numbers"); // [1, 2, 3, 3]
//   print("First item: ${numbers[0]}"); // 1

//   // Kiểm tra List có phải Iterable không
//   print(numbers is Iterable<int>); // true

//   // Vì List là Iterable nên có thể dùng for-in
//   for (var n in numbers) {
//     print(n);
//   }
// }
// void main() {
//   var numbers = {1, 2, 3, 3, 2};
//   print("Set: $numbers"); // {1, 2, 3} (bỏ phần tử trùng lặp)
//   numbers.add(4);
//   print("Sau khi thêm: $numbers"); // {1, 2, 3, 4}
//   print("Có số 2 không? ${numbers.contains(2)}"); // true
//   for (var n in numbers) {
//     print("Phần tử: $n");
//   }
// }

List<String> list = ['123', '123'];
void main() {
  var student = {
    "id": 101,
    "name": "Alice",
    "age": 20
  };

  print("Map: $student"); 
  print("Tên sinh viên: ${student["name"]}"); // Alice

  student["grade"] = "A";
  print("Sau khi thêm: $student"); 

  student.forEach((key, value) {
    print("$key: $value");
  });
}
String asciiCharType(int char) {
  const space = 32;
  const zero = 48;
  const nine = 57;

  if (char < space) {
    return 'control';
  } else if (char == space) {
    return 'space';
  } else if (char > space && char < zero) {
    return 'punctuation';
  } else if (char >= zero && char <= nine) {
    return 'digit';
  } else {
    return '';
  }
}
