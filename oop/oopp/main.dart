import 'animal.dart';
import 'bird.dart';
import 'cat.dart';

void main() {
  Cat cat = Cat();
  cat.speak();
  cat.move(); 
  // cat.sleep();
  cat.run();

  print("-----------");

  Animal bird = Bird();
  bird.speak();
  bird.move();
  bird.sleep(); 
  bird.fly();

}
