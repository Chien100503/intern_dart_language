enum Status { pending, success, error }

// enum constructor
enum Color {
  red(0xFF0000),
  green(0x00FF00),
  blue(0x0000FF);

  final int hex;
  const Color(this.hex);

  void printHex() => print("Hex: $hex");
}

void main() {
  Status current = Status.success;

  if (current == Status.pending) {
    print('Đang xử lý ...');
  } else if (current == Status.success) {
    print('Đã thành công');
  } else if (current == Status.error) {
    print('Lỗi');
  }
  ;

  for (var s in Status.values) print(s);

  print('');
  print('- ENUM CONSTRUCTOR -');
  // print enum constructor
  Color c = Color.red;
  print(c.hex); // 16711680
  c.printHex(); // Hex: 16711680
}
