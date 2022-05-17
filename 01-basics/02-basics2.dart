// A Class is a blueprint for objects
class Person {
  String? name;
  int? age;

  // shortcut syntax for constructor
  // Person(this.name, this.age);
  // No need to provide data type it already knows
}

class Person2 {
  String? name;
  int? age;

  // Constructor
  // Person2(String inputName, int age) {
  // Passing the values in curly braces means
  // that all the args are optional
  Person2({String? inputName, int? age}) {
    // Constructor body
    name = inputName;
    this.age = age;
    // Why use named arguments?
    // Is great for construtors or args that have a lot of arguments

    // i can provide default values for the args
    // in case the value is not provided
    // Person2({String? inputName, int? age = 30})

    // Make the args required, only in Flutter
    // Person2({@required String? inputName, @required int? age})
  }
}

double addNumbers(double num1, double num2) {
  // print(num1 + num2);
  return num1 + num2;
}

void main() {
  var p1 = new Person();
  p1.name = 'Alberto';
  p1.age = 35;
  print(p1.toString());
  print(p1);
  print(p1.name);
  print(p1.age);

  print('\n');
  // i can mix and match the order
  var p2 = new Person2(
    age: 31,
    inputName: 'Yarelis',
  );
  print(p2.name);
  print(p2.age);

  print('\n');
  // Use var because Dart func addNum already knows we created a double
  var firstResult = (addNumbers(1, 2.6));
  firstResult = (addNumbers(1, 1));
  // ...
  print(firstResult + 1);
  print('hello!');
}
