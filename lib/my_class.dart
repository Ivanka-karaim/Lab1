class MyClass {
  String name;
  String surname;
  late int age;
  late String _email;

  // MyClass(this.name, this.surname);

  MyClass({required this.name, required this.surname});

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