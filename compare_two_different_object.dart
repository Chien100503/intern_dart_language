// class User {
//   String name;

//   User(this.name);

//   void talk() => print('My name is $name');
// }
class Person {
  final String name;
  final int age;

  Person(this.name, this.age);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Person && other.name == name && other.age == age);

  // @override
  // int get hashCode => name.hashCode ^ age.hashCode;
  @override
  int get hashCode => Object.hash(name, age);
}

void main() {
  // var u1 = User('Chien');
  // var u2 = User('Chien');
  // print(u1 == u2);

  var p1 = Person("Alice", 20);
  var p2 = Person("Alice", 20);
  var p3 = Person("Bob", 20);
  var p4 = p1;
  print(p1 == p2); // true (giá trị bằng nhau)
  print(p1.hashCode); // hashCode bằng nhau
  print(p2.hashCode); // hashCode bằng nhau
  print(p1 == p3); // false
  print(identical(p1, p4)); // false (khác instance)
}
