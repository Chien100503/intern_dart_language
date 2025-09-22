mixin Address {
  void address(String address) => print('Address Company: $address');
}

mixin Name {
  void name(String name) => print('Name Company: $name');
}

class In4Company with Address, Name {
  void in4Company() {
    address('Hue');
    name('Lutech Company');
  }
}

void main() {
  var c = In4Company();
  c.in4Company();
}
