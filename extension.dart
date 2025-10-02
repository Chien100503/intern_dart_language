extension StringExtension on String {
  bool get isValidEmail {
    return contains('@') && contains('.');
  }

  String capitalize() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1);
  }
}

void main() {
  String name = "";
  String email = "abc@gmail.com";
  print(email.isValidEmail); // true
  print(name.capitalize()); // ""
  print("Hello".capitalize()); // Hello
}
