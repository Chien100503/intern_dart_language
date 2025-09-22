// Lớp cha (Base class)
class Animal {
  void speak() => print("Some animal sound");
}

// Lớp con (Subclass)
class Dog extends Animal {
  @override
  void speak() => print("Woof!");
}

class Cat extends Animal {
  @override
  void speak() => print("Meow!");
}

// Lớp Generic với Bounds (T phải kế thừa Animal)
class Cage<T extends Animal> {
  T animal;

  Cage(this.animal);

  void letAnimalSpeak() {
    animal.speak();
  }
}

void main() {
  var dogCage = Cage(Dog());
  dogCage.letAnimalSpeak(); // Woof!

  var catCage = Cage(Cat());
  catCage.letAnimalSpeak(); // Meow!

  // var numCage = Cage(123); ❌ Error: int không phải Animal
}
