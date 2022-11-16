part of 'methods.dart';

bool checkPalindrome(str) {
  String temp;
  temp = str.toLowerCase().replaceAll(new RegExp(r'/[\W_]/g'), '');
  String reversed = temp.split('').reversed.join('');
  return str == reversed;
}
