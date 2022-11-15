part of 'methods.dart';

bool checkPalindrome(str) {
  str = str.toLowerCase().replaceAll(new RegExp(r'/[\W_]/g'), '');
  String reversed = str.split('').reverse().join();
  return str == reversed;
}
