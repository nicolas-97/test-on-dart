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

List<int> sort(List<int> list){
  list.sort();
  return list;
}

List<int> sieveOfEratosthenes(int limit) {
  List<bool> primes = List.generate(limit + 1, (index) => true);
  primes[0] = false;
  primes[1] = false;

  for (int p = 2; p * p <= limit; p++) {
    if (primes[p]) {
      for (int i = p * p; i <= limit; i += p) {
        primes[i] = false;
      }
    }
  }

  List<int> primeNumbers = [];
  for (int i = 2; i <= limit; i++) {
    if (primes[i]) {
      primeNumbers.add(i);
    }
  }

  return primeNumbers;
}