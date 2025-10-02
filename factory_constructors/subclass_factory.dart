// abstract class Shape {
//   // Factory quyết định trả về subclass nào
//   factory Shape(String type) {
//     if (type == 'circle') return Circle();
//     if (type == 'square') return Square();
//     throw Exception("Unknown shape type");
//   }

//   void draw();
// }

// class Circle implements Shape {
//   @override
//   void draw() => print("Drawing a circle");
// }

// class Square implements Shape {
//   @override
//   void draw() => print("Drawing a square");
// }

// void main() {
//   Shape s1 = Shape("circle"); // Circle
//   Shape s2 = Shape("square"); // Square

//   print('--- ${s1}'); // Circle
//   print(s2.runtimeType); // Square

//   s1.draw(); // Drawing a circle
//   s2.draw(); // Drawing a square
// }

class ApiResponse {
  final int code;
  final String message;

  ApiResponse(this.code, this.message);

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    if (json['code'] == 200) {
      return SuccessResponse(json['message']); 
    } else {
      return ErrorResponse(json['message']);
    }
  }
}

class SuccessResponse extends ApiResponse {
  SuccessResponse(String message) : super(200, message);
}

class ErrorResponse extends ApiResponse {
  ErrorResponse(String message) : super(400, message);
}

void main() {
  var success = ApiResponse.fromJson({"code": 200, "message": "OK"});
  var error = ApiResponse.fromJson({"code": 400, "message": "Not Found"});

  print(success.message); // SuccessResponse
  print(error.message); // ErrorResponse
}
