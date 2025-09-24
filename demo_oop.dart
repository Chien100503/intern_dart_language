mixin Logger {
  void log(String message) => print('Hẹ hẹ $message');
}

class Animal {}

class Dog extends Animal with Logger {
  void talk() {
    log('Gâu Gâu');
  }
}

void main() {
  var dog = Dog();  
  dog.talk();
}