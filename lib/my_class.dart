import 'package:flutter/rendering.dart';

class MyClass {
  String name;
  String surname;
  late int _age;
  late String _email;

  // MyClass(this.name, this.surname);

  MyClass({required this.name, required this.surname});

  set age(int value) => _age=2023-value;
  int get age => _age;

  set email(String email)  {
    RegExp reg = RegExp(r'^[a-z0-9]+[\._]?[a-z0-9]+[@]\w+[.]\w{2,3}$');
    final bool emailValid = reg.hasMatch(email);
    if (!emailValid) {
      _email = "";

    }else {
      _email = email;
    }
  }
  String get email => _email;

  @override
  String toString() {
    return '$name $surname\nAge: $age\nEmail: $email';
  }
}