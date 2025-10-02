void main() {
  // String? maybeString = 'nullable with base type String';
  String? maybeString = null;

  switch (maybeString) {
    case var s?:
      // Ở đây s là String (non-nullable)
      print('Có giá trị: $s');
    case null:
      print('Giá trị null');
  }
}
