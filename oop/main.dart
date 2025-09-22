import 'person.dart';
// import 'uniform.dart';

void main() {
  // Uniform uni = Uniform("áo dìa");
  Person user1 = Person("Chiến", "Nam", 22, "uni");
  Person user2 = Person("Nam", "Nam", 23, "sômi");

  List<Person> users = [user1, user2];

  var person = Person('chien', 'nam', 22, 'SO-MI');

  person.talk();

  for (int i = 0; i < users.length; i++) {
    print(users[i].showPerson());
    if (i < users.length - 1) {
      print("-------");
    }
  }
}
