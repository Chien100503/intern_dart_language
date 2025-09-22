import 'animal.dart';
import 'animal_mixin.dart';

class Bird extends Animal with AnimalMixin {
  @override
  void speak() {
    print("Chíp chíp!");
  }

  @override
  void move() {
    print("Bay bằng cánh");
  }

  @override
  void run() {
    // TODO: implement run
  }

  void abc() {
    fly('Baybay');
  }
}