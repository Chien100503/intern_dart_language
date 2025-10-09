class Person {
  String name;
  int age;

  Person(this.name, this.age) {
    print('Person constructor: name = $name, age = $age');
  }
}

class Student extends Person {
  String classRoom;

  Student(String name, int age, this.classRoom) : super(name, age) {
    print('Student constructor: classRoom = $classRoom');
  }
}

void main() {
  Student('An', 18, '10A1');
  // print(s);
}
