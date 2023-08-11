int divideFactorials(int numerator, int denominator) {
  BigInt n = BigInt.one;
  BigInt d = BigInt.one;

  for (int i = 1; i <= numerator; i++) {
    n *= BigInt.from(i);
  }
  for (int i = 1; i <= denominator; i++) {
    d *= BigInt.from(i);
  }
  return (n ~/ d).toInt();
}

bool isPalindrome(String text) {
  return false;
}

List<int> sort(List<int> list) {
  return [];
}

List<int> sieveOfEratosthenes(int limit) {
  return [];
}
