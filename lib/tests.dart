int factorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}


double divisionFactorial(int numerator, int denominator) {
  // Se verifica que los números sean positivos

 if (numerator < 0 || denominator < 0) {
    return 0;
   } else {
    int fa = factorial(numerator);
    int fb = factorial(denominator);

    if (fb == 0) {

      return fa / fb;
    }
  }


bool isPalindrome(String text) {

  
  text = text.toLowerCase().replaceAll(" ", "");

  int n = text.length;
 
  for (int i = 0; i < n / 2; i++) {

    if (text[i] != text[n - i - 1]) {
  
      return false;
    }
  }

  return true;
}


List<int> sort(List<int> list) {
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
