import 'package:diacritic/diacritic.dart';

int divideFactorials(int numerator, int denominator) {

  int aux1 = denominator+1;
  int aux2 = denominator;
  int sol = 0;

  for(int i = numerator; i < denominator; i++){
    aux1 += 1;
    aux2 = aux1 * aux2;

  }
  sol = aux1;



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
