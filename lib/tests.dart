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
  return false;
}

List<int> sort(List<int> list) {
  return [];
}

List<int> sieveOfEratosthenes(int limit) {
  return [];
}


