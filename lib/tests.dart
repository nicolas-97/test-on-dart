int divideFactorials(int numerator, int denominator) {
int num1=numerator;
int num2=denominator;
int factorial1 = 1;
int factorial2 = 1;
for(int i = num1; i>= 1; i-- ){
    factorial1 *= i;
  }
for(int i = num2; i>= 1; i-- ){
    factorial2 *= i;
  }
int result = factorial1 ~/ factorial2;
  return(result);
}


bool isPalindrome(String text){
  return false;
}

List<int> sort(List<int> list){
  return [];
}

List<int> sieveOfEratosthenes(int limit) {
  return  [];
}