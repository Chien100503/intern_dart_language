import 'pet.dart';
import 'swimer.dart';
import 'animal.dart';

class Dog extends Animal with Swimmer implements Pet {
  int _age;

  // Constructor
  Dog(String name, this._age) : super(name);

  // Named constructor
  Dog.puppy(String name) : _age = 1, super(name);

  // // Factory constructor
  factory Dog.rescue() => Dog("Rescue Dog", 2);

  // Getter & Setter
  int get age => _age;
  set age(int value) {
    if (value > 0) _age = value;
  }

  @override
  void speak() => print("$name says: Woof!");

  @override
  void play() => print("$name is playing fetch!");
}
