int factorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

int divideFactorials(int numerator, int denominator) {
  double result = factorial(numerator) / factorial(denominator);
  return result.toInt();
}

bool isPalindrome(String text) {
  String cleanText = text.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  String reversedText = cleanText.split('').reversed.join('');
  return cleanText == reversedText;
  return false;
}

List<int> sort(List<int> list) {
  list.sort();
  return list;
}

List<int> sieveOfEratosthenes(int limit) {
  return [];
}
