import 'package:diacritic/diacritic.dart';

int divideFactorials(int numerator, int denominator) {
  int result = 1;
  for (int i = numerator; i > denominator; i--) {
    result *= i;
  }
  return result;
}

bool isPalindrome(String text) {
  text = removeDiacritics(text).toLowerCase().replaceAll(" ", "");
  String txet = text.split("").reversed.join();

  return text == txet;
}

List<int> sort(List<int> list) {
  return [];
}

List<int> sieveOfEratosthenes(int limit) {
  return [];
}
