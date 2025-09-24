// 1. Basic function + arrow syntax
bool isEven(int x) => x % 2 == 0;
// 2. Named & optional positional parameters
String greet(String name, {String greeting = 'Hello', int? times}) {
  var result = '';
  for (int i = 0; i < (times ?? 1); i++) {
    result += '$greeting, $name!\n';
  }
  return result;
}

void main() {
  print(isEven(6)); // true

  print(greet('Alice', greeting: 'Hi', times: 2));
}
