void main() {
  Map<String, dynamic> person = {
    'name': 'Chien',
    'age': 25,
    'city': 'Hanoi',
    'job': 'Developer',
    'birth_day': '10052003',
  };

  person.forEach((key, value) => print('- $key : $value'));
  var a = person.entries.first;
  print('${a.key} : ${a.value}');

  var age = person['age'] = person['age'].toString();
  print('${person['age'] = person['age'].toString()}');

  var birth_day = int.parse(person['birth_day']);
  print(birth_day);

  var data = {'a': 'dog', 'b': 'cat', 'c': 'bird', 'd': 'cow'};
  // Lọc các key có độ dài > 3
  var filtered = person.entries.where((e) => e.key.length > 3);

  // Chuyển lại thành Map
  var result = Map.fromEntries(filtered);

  var filterValue = Map.fromEntries(
    data.entries.where((e) => e.value.length == 3),
  );
  var filterKey = Map.fromEntries(
    data.entries.where((e) => e.value.startsWith('b')),
  );
  print(filterKey);
  print(filterValue);
  print(
    result,
  ); // {name: Chien, city: Hanoi, job: Developer, birth_day: 10052003}
}
