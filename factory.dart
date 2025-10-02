// --------------- Singleton
class Database {
  // hold only instance
  static final Database _instance = Database._internal();

  // factory constructor return an instance
  factory Database() {
    return _instance;
  }

  // private constructor block create get out
  Database._internal();

  void query(String sql) {
    print("Running query: $sql");
  }
}

abstract class Shape {
  void draw();

  factory Shape(String type) {
    if (type == "circle") return Circle();
    if (type == "square") return Square();
    throw Exception("Unknown shape");
  }
}

class Circle implements Shape {
  @override
  void draw() => print("Vẽ hình tròn");
}

class Square implements Shape {
  @override
  void draw() => print("Vẽ hình vuông");
}

void main() {
  Shape s1 = Shape("circle");
  Shape s2 = Shape("square");

  s1.draw(); // Vẽ hình tròn
  s2.draw(); // Vẽ hình vuông

  // --------------------------
  var db1 = Database();
  var db2 = Database();

  print(db1 == db2); // true (cùng 1 instance)
  db1.query("SELECT * FROM users");
}
