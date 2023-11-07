import 'package:tutorial/model/action.dart';

class User implements Action, Fuck {
  static const int fuckCount = 0;

  int _id;
  String _name;

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  User(this._id, this._name);

  void talk() {
    print("$name will fuck you in tomorrow");
  }

  @override
  String toString() {
    return "Im $name";
  }

  @override
  void fly() {}

  @override
  void fuck() {}
}

class Demo {
  final int _id;
  final String name;

  // có thể khai báo const constructor
  Demo(this._id, this.name);

  @override
  String toString() {
    // TODO: implement toString
    return "id: $_id, name: $name";
  }
}
