int divideFactorials(int numerator, int denominator) {
  int var1 = 1;
  for (var i = denominator + 1; i <= numerator; i++) {
    var1 = var1 * i;
  }
  return var1;
}

bool isPalindrome(String text) {
  String str1 = text
      .replaceAll(" ", "")
      .replaceAll("á", "a")
      .replaceAll("é", "a")
      .replaceAll("í", "i")
      .replaceAll("ó", "o")
      .replaceAll("ú", "u")
      .toLowerCase();
  String str2 = str1
      .replaceAll(" ", "")
      .replaceAll("á", "a")
      .replaceAll("é", "e")
      .replaceAll("í", "i")
      .replaceAll("ó", "o")
      .replaceAll("ú", "u")
      .toLowerCase();
  int cont = str2.length;
  bool prue = true;
  bool entr = true;

  for (var i = 0; i < str1.length; i++) {
    if (str1[i] != str2[cont - 1] && entr == true) {
      prue = false;
      entr = false;
    }
    cont = cont - 1;
  }
  return prue;
}

List<int> sort(List<int> list) {
  return [];
}

List<int> sieveOfEratosthenes(int limit) {
  return [];
}
