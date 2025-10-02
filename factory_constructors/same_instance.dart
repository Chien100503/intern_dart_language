// So sánh ý nghĩa về cùng 1 instance

/// Class Person là để demo
///
/// Class này là sử dụng default constructor
///
class PersonDefault {
  final String name;
  PersonDefault(this.name);
}

void main() {
  // constructor default
  var pd1 = PersonDefault("A");
  var pd2 = PersonDefault("A");
  print(pd1 == pd2); // false

  // Factory constructor
  var p1 = Person("A");
  var p2 = Person("A");
  var p3 = Person("C");
  print(p1 == p2); // true
  print(p1 == p3);
}

/// Class này là class ví dụ về factory constructor
///
/// Ví dụ về ý nghĩa của cùng instance
///
class Person {
  // Shared by all instances of the class - Cache created users.
  static final Map<String, Person> _cache = {};

  final String name;

  factory Person(String name) {
    if (_cache.containsKey(name)) {
      print('trả về instance cũ $name');
      return _cache[name]!;
    } else {
      final p = Person._internal(name);
      _cache[name] = p;
      print('tạo mới instance ${p.name}');

      // _cache.forEach((key, value) {
      //   print("forEach => key: $key, value: ${value.name}");
      // });
      return p;
    }
  }

  Person._internal(this.name);
}
