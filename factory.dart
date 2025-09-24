class Database {
  // hold only instance
  static final Database _instance = Database._internal();

  // factory constructor return an instance
  factory Database() {
    return _instance;
  }

  // private constructor block create get out
  Database._internal();

  void query(String sql) {
    print("Running query: $sql");
  }
}

void main() {
  var db1 = Database();
  var db2 = Database();

  print(db1 == db2); // true (cùng 1 instance)
  db1.query("SELECT * FROM users");
}
