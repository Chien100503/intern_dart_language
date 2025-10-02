// Hàm tạo Stream: phát ra số từ 1 đến [to], mỗi số cách nhau 1 giây
Stream<int> timedCounter(int to) async* {
  for (int i = 1; i <= to; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i; // phát giá trị ra Stream
  }
}

// Hàm lắng nghe Stream
Future<void> countStream() async {
  await for (var i in timedCounter(5)) {
    print('Giá trị: $i');
  }
}

void main() async {
  print('Bắt đầu đếm...');
  await countStream();
  print('Hoàn thành!');
}
