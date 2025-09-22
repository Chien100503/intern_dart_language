abstract class Animal {
  String name;

  Animal(this.name);

  void speak(); // phương thức trừu tượng
  void move() => print("$name is moving...");
}