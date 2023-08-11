int divideFactorials(int numerator, int denominator) {
  int resta = numerator - denominator;
  int acum = 1;

  if (numerator == denominator) {
    acum = numerator;
  }
  if (numerator > denominator) {
    for (var i = 1; i <= resta; i++) {
      acum *= numerator;
      numerator--;
    }
  }
  return acum;
}

bool isPalindrome(String text) {
  var text1 = text.replaceAll(" ", "").toLowerCase();
  int i = 0, j = text1.length - 1;
  while (i < j) {
    if (text1[i] != text1[j]) {
      return false;
    }
  }
  i++;
  j--;
  return true;
}

List<int> sort(List<int> list) {
  return [];
}

List<int> sieveOfEratosthenes(int limit) {
  return [];
}

void main() {
  print(isPalindrome("oso"));
}
