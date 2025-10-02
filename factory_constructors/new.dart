class Person {
  static final Map<String, Person> _cache = {};

  final String name;

  factory Person(String name) {
    if (_cache.containsKey(name)) {
      print('Trả về instance cũ $name');
      return _cache[name]!;  // ⬅️ nếu đặt code sau đây thì mới là dead code
    } else {
      final p = Person._internal(name);
      _cache[name] = p;
      print('Tạo mới instance ${p.name}');

      // ✅ forEach hoàn toàn chạy được
      _cache.forEach((key, value) {
        print("forEach => key: $key, value: ${value.name}");
      });

      // ✅ for-in cũng chạy được
      for (var entry in _cache.entries) {
        print("for-in => key: ${entry.key}, value: ${entry.value.name}");
      }

      return p; // ⬅️ return cuối cùng
    }
  }

  Person._internal(this.name);
}

void main() {
  var p1 = Person("A");
  var p2 = Person("B");
  var p3 = Person("A");
}
