class User {
  // Lưu cache các user đã tạo - Shared by all instances of the class.
  static final Map<String, User> _cache = {};

  final String name;

  // Factory constructor
  factory User(String name) {
    if (_cache.containsKey(name)) {
      print("Trả về instance cũ của $name");
      return _cache[name]!; // lấy từ cache
    } else {
      print("Tạo instance mới của $name");
      final user = User._internal(name);
      _cache[name] = user; // lưu vào cache
      return user;
    }
  }

  // Private constructor (chỉ dùng nội bộ)
  User._internal(this.name);
}

void main() {
  var u1 = User("admin");
  var u2 = User("admin");
  var u3 = User("guest");

  print(u1 == u2); // true  (cùng instance)
  print(u1 == u3); // false (khác instance)
}
