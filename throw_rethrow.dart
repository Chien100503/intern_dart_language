void main() {
  try {
    riskyFunction();
  } catch (e, s) {
    print("Main caught: $e");
    print("Stack trace:\n$s");
  }
}

void riskyFunction() {
  try {
    throw Exception("Có lỗi xảy ra!");
  } catch (e) {
    print("Đã bắt lỗi trong riskyFunction: $e");
    // Xử lý một phần, rồi ném lại
    // throw e.toString();
    rethrow;
    
  }
}
