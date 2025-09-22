class Person {
  String? name, address;
  int? age;

  Person(this.name, this.address, this.age);

  talk() {
    print("toi la nguoi Viet Nam");
  }

  // @override
  // String toString() {
  //   return 'name: $name, address: $address, age: $age';
  // }
}
