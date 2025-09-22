/// abstract = lớp trừu tượng.
/// 
/// Không thể tạo Object trực tiếp, chỉ có kế kế thừa (extends) hoặc triển
/// triển khai (implements)
/// 
/// dùng khi muốn định nghĩa hành vi chung cho nhiều lớp con, những không (hoặc chưa)
/// định nghĩa chi tiết
abstract class Animal {
  String get name; // chỉ định nghĩa, không có body
  void breathe();
}

class Cat implements Animal {
  @override
  final String name;

  Cat(this.name); // Tự viết constructor riêng

  @override
  void breathe() => print("$name is breathing...");
}

void main() {
  var cat = Cat("Milo");
  cat.breathe(); // Milo is breathing...
}
