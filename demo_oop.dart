mixin Logger {
  void log(String message) => print('hihi $message');
}

class Animal {}

class Dog extends Animal with Logger {
  void talk() {
    log('gaugau');
  }
}

void main() {
  var dog = Dog();  
  dog.talk();
}