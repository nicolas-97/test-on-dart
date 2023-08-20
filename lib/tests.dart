import 'package:diacritic/diacritic.dart';

int divideFactorials(int numerator, int denominator) {
  int repos = 1;
  for(int i = denominator; i < numerator; i++){
    repos += repos*i;
  }

  return repos;
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