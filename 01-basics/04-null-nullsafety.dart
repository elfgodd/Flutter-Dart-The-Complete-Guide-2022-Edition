// void main() {
//   var userName;

//   // userNamw = null; // Error
//   userName = 'Alberto';
//   print(userName);

//   if (userName != null) {
//     // only continue if it's not null
//     print('User name is $userName');
//   }
// }

void main() {
  String? userName;

  userName = null; // Error
  userName = 'Alberto';
  print(userName);

  if (userName != null) {
    // only continue if it's not null
    print('User name is $userName');
  }
}
