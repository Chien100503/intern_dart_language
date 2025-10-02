class Person {
  final String name;
  final int age;

  Person(this.name, this.age);

  // redirect đến constructor chính
  Person.baby(String name) : this(name, 0);

  Person.teen(String name) : this(name, 15);

  Person.adult(String name) : this(name, 30);

  Person.old(String name) : this(name, 80);
}

class Point {
  final int? x, y;

  // Default constructor
  const Point({this.x =0, this.y = 0});

  // Named constructor
  Point.origin() : x = 0, y = 0;

  Point.fromJson(Map<String, int> json)
    : x = json['x'] ?? 0,
      y = json['y'] ?? 0;
}

void main() {
  var p1 = Person.baby("Tom");
  var p2 = Person.teen("Jerry");
  var p3 = Person.adult("Alice");
  var p4 = Person.old("John");

  print("${p1.name}, ${p1.age}"); // Tom, 0
  print("${p2.name}, ${p2.age}"); // Jerry, 15
  print("${p3.name}, ${p3.age}"); // Alice, 30
  print("${p4.name}, ${p4.age}"); // Alice, 30

  var q4 = Point(x: 5,y: 3);
  print(q4.x);
  print(q4.x);
  var q1 = Point(x: 3, y: 3); // default
  var q2 = Point.origin(); // named constructor
  var q3 = Point.fromJson({'x': 5, 'y': 7}); // named constructor

  print("q1: (${q1.x}, ${q1.y})");
  print("q2: (${q2.x}, ${q2.y})");
  print("q3: (${q3.x}, ${q3.y})");
}
