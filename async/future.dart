void main() async {
  print('Đang lấy đơn hàng...');
  await printOrderMessage();
  print('Hoàn tất!');
}

// Giả lập một hàm gọi API lấy đơn hàng từ server
Future<String> fetchUserOrder() async  {
  // giả sử mất 2 giây mới trả về kết quả
  await Future.delayed(Duration(seconds: 2));
  return 'Cà phê sữa đá';
}

// Hàm in thông báo đơn hàng
Future<void> printOrderMessage() async {
  try {
    var order = await fetchUserOrder();
    print('Bạn đã đặt: $order');
  } catch (e) {
    print('Lỗi khi lấy đơn: $e');
  }
}

