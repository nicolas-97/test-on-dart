int divideFactorials(int numerator, int denominator) {
  int numerador=numerator;
  int denominador = denominator;
  int total1=1;
  int total2 = 1;

  for (int i = numerador; i > 0; i--) {
            total1 = i*total1;
        }


  for (int i = denominador; i > 0; i--) {
            total2 = i*total2;
        }

    
    int total3 = total1~/total2;
  return (total3);
}


bool isPalindrome(String text){
    String [] a = text.split("");
    String[] b = text.split("");
    Collections.reverse(Arrays.asList(a));
    if(a.equals(b)){
      return true;
    }
    
  return false;
}

List<int> sort(List<int> list){
  return [];
}

List<int> sieveOfEratosthenes(int limit) {
  return  [];
}