import 'animal_mixin.dart';

class Cat with AnimalMixin{
  void speak() {
    print("Mew Mew!");
  }

  void move() => print("Chạy bằng 4 chân");

  void run() => print('Chạy');
  

}
