mixin Logger {
  void log(String msg) => print("LOG: $msg");
}

mixin ErrorHandler {
  void handleError(String error) => print("ERROR: $error");
}

class Service with Logger, ErrorHandler {
  void fetch() {
    log("Fetching data...");
    handleError("404 Not Found");
  }
}

void main() {
  var s = Service();
  s.fetch();
}
