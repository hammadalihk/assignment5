import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("*****Answer no : 01****");
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };
  print("check friday : ${expenses.containsKey("fri")}");
  expenses['fri'] = 5000.0;
  print(expenses);
  print("*****Answer no : 02****");
  circle();
  print("*****Answer no : 03****");
  theorem();
  print("*****Answer no : 04****");
  reverse();
  print("*****Answer no : 05****");
  loginUser("hammad@gmail.com", 12345);
  signUp();
  print("*****Answer no : 06****");
  power(2, 3);
  print("*****Answer no : 07****");
  count();
}

void circle() {
  double r, area, pi = 3.14;
  // r = 5;
  stdout.write("enter radius");
  r = double.parse(stdin.readLineSync()!);
  area = (pi * r * r);
  // circle(int) = area;
  print("area of circle is : $area");
}

void theorem() {
  stdout.write("enter base :");
  int base = int.parse(stdin.readLineSync()!);
  // stdin.readLineSync();
  stdout.write("enter per :");
  int per = int.parse(stdin.readLineSync()!);
  double hyp = sqrt((base * base) + (per * per));
  print(hyp);
}

void reverse() {
  String str = "dart programming";
  String rev = "";
  for (int i = str.length - 1; i >= 0; i--) {
    rev = rev + str[i];
  }
  print(str);
  print(rev);
}

void power(
  int n,
  p,
) {
  int result = n;
  for (int i = 2; i <= p; i++) {
    result = result * n;
  }
  print("$n the power $p = $result");
}

void count() {
  int vcount = 0;
  int ccount = 0;
  String str = "This is a program to calculate vovel or consonant number";
  str = str.toLowerCase();
  for (int i = 0; i < str.length; i++) {
    if (str[i] == 'a' ||
        str[i] == 'e' ||
        str[i] == 'i' ||
        str[i] == 'o' ||
        str[i] == 'u') {
      vcount = vcount + 1;
    } else {
      ccount++;
    }
  }
  print(str);
  print("vovel number : $vcount");
  print("consonant number : $ccount");
}

class User {
  String username, email, password, phonenumber;

  User(
      {required this.username,
      required this.email,
      required this.password,
      this.phonenumber = ""});
}

void signUp() {
  print("Enter your username:");
  String username = stdin.readLineSync()!;

  print("Enter your email:");
  String email = stdin.readLineSync()!;

  print("Enter your password:");
  String password = stdin.readLineSync()!;

  print("Enter your phone number (optional):");
  String? phonenumber = stdin.readLineSync()!;

  print("signup successful");
  print("username: $username");
  print("email: $email");
  print("phonenumber: $phonenumber");
}

void loginUser(String email, int password) {
  if (email == "hammad@gmail.com" && password == 12345) {
    print("login successful");
  } else {
    print("incorrect login failed. try again");
  }
}
