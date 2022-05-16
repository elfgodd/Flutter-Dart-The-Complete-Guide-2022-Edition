// A Class is a blueprint for objects
class Person {
  String? name;
  int? age;  
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
  String name = 'Alberto?';
  String age = '35';


  // Use var because Dart func addNum already knows we created a double
  var firstResult = (addNumbers(1,2.6));
  firstResult = (addNumbers(1,1));
  // ...
  print(firstResult + 1); 
  print('hello!');
}