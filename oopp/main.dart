import 'dog.dart';

void main() {
  // Tạo object bằng constructor
  var dog1 = Dog("Buddy", 3);
  dog1.speak();   
  dog1.move();     
  dog1.play();      
  dog1.swim();   
  print("Age: ${dog1.age}");

  // Named constructor
  var puppy = Dog.puppy("Lucky");
  puppy.speak();   


  var rescueDog = Dog.rescue();
  rescueDog.speak(); 
}