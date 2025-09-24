// typedef IntBinaryOp = int Function(int a, int b);

// int  add(int x, int y) => x + y;
// void main() {
//   IntBinaryOp op = add;  // dùng alias
//   print(op(3, 4));
// }
// typedef StringToIntMap = Map<String, int>;

typedef IntList = List<int>;
void main() {
  List<int> scores = [8, 9, 10]; 
  IntList scores1 = [3, 6, 5];
  IntList scores2 = [8, 9, 111];
  print(scores1);
  print(scores[1] + scores2[2]);
}
