void main() {
  var isLoggedIn = false;
  var userName = 'Alberto1';
  var password = 'tester1';
  var hasCorrectCreditentials = userName == 'Alberto' && password == 'tester';
  var age = 35;

  // Cond && Condi !! condi
  if (userName == 'Alberto' && (password == 'tester' || age > 20)) {
    print('is logged in');
  } else if (isLoggedIn) {
    print('Overruled!');
  } else {
    print('failed');
  }

  // var isLoggedIn = false;
  // if(isLoggedIn) {
  //   print('is logged in');
  // } else {
  //   print('is not logged in');
  // }
}
