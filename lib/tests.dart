import 'package:diacritic/diacritic.dart';

int divideFactorials(int numerator, int denominator) {
  int sol = 1;
  for(int i = denominator; i < numerator; i++){
    sol += sol*i;
  }

  return sol;
}

bool isPalindrome(String text){

  text = removeDiacritics(text).toLowerCase().replaceAll(" ", "");
  String aux = text.split("").reversed.join();

  return text == aux;
}

List<int> sort(List<int> list){
  list.sort();
  return list;
}

List<int> sieveOfEratosthenes(int limit) {
  return  [];
}
