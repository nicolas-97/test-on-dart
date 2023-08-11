import 'dart:convert';

int divideFactorials(int numerator, int denominator) {
  return 1;
}

bool isPalindrome(String text){
  var convert = text.toLowerCase().split(" ").join();
  var revConvert = convert.split("").reversed.join();
  if(convert == revConvert){
    return true;
  }
  return false;
}

List<int> sort(List<int> list){
  list.sort();
  return list;
}

List<int> sieveOfEratosthenes(int limit) {
  return  [];
}