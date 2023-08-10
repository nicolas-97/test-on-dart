int divideFactorials(int numerator, int denominator) {
  return 1;
}


bool isPalindrome(String text){
  return false;
}

List<int> sort(List<int> list){
  return [];
}

List<int> sieveOfEratosthenes(int limit) {
  List<bool> primes = List.filled(limit + 1, true);
  primes[0] = primes[1] = false;

  for (int i = 2; i * i <= limit; i++) {
    if (primes[i]) {
      for (int j = i * i; j <= limit; j += i) {
        primes[j] = false;
      }
    }
  }

  List<int> result = [];
  for (int i = 2; i <= limit; i++) {
    if (primes[i]) {
      result.add(i);
    }
  }

  return result;
}