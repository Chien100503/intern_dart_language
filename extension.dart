extension StringExtension on String {
  bool get isValidEmail {
    return contains('@') && contains('.');
  }

  bool get checkChienName{

    return this.contains('chien');
  }

  String capitalize() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1);
  }
}

void main() {
  String chien = "ho xuan chien";

  print(chien.checkChienName);

  String name = "";
  String email = "abc@gmail.com";
  // email.contains('@');

  print(email.isValidEmail); // true
  print(name.capitalize()); // ""
  print("hello".capitalize()); // Hello
}

