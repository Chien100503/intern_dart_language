import 'home.dart';
import 'uniform.dart';
import 'work.dart';

class Person extends Uniform with Work, Home{
  String? name, sex;
  int? _old;
  // final Uniform uniform;

  Person(this.name, this.sex, this._old, String clothing) : super(clothing);

  int? get Old => _old;

  String showPerson() {
    return "Name: $name, Sex: $sex, Uniform: $clothing";
  }
  
  talk() {
    print('Talk');
  }
}
