void main() {
  (String, String, {int a}) person = ('ABC', a: 12, 'nam');

  print(person.$2);
  ({String name, int age, String type, bool vaccinated}) pet = (
    name: 'hehe',
    age: 1,
    type: 'Cat',
    vaccinated: true,
  );

  print("Tên: ${pet.name}");
  print("Tuổi: ${pet.age}");
  print("Loài: ${pet.type}");
  print("Đã tiêm phòng: ${pet.vaccinated}");
}
