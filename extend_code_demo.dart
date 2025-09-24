
/// -- Khi nào cần dùng extend (Kế thừa)
/// 
/// Class con cần kế thừa hành vi hoặc thuộc tính từ class cha
/// 
/// Muốn tận dụng constructor của class cha.
class Animal {
  String name;

  Animal(this.name);
  void breathe() => print("Breathing...");
}
class Dog extends Animal {
  int age;
  Dog(this.age, String name) : super(name);

  void bark() => print("$name is barking at age -> $age years old!");
}



void main() {
  var dog = Dog(3, "Pulldo");
  dog.breathe(); // từ Animal
  dog.bark(); // từ Dog
}
