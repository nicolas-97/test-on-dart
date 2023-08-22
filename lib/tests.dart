import 'dart:convert';

int divideFactorials(int numerator, int denominator) {
  return 1;
}

bool isPalindrome(String text) {
  var convert = removeAccents(text).toLowerCase().split(" ").join();
  var revConvert = convert.split("").reversed.join();
  if (convert == revConvert) {
    return true;
  }
  return false;
}

List<int> sort(List<int> list) {
  list.sort();
  return list;
}

List<int> sieveOfEratosthenes(int limit) {
  return [];
}

String removeAccents(String text) {
  var asciiTable = {
    'á': 'a',
    'é': 'e',
    'í': 'i',
    'ó': 'o',
    'ú': 'u',
    'ñ': 'n',
    'ç': 'c',
  };

  var newText = '';
  for (int i = 0; i < text.length; i++) {
    var letter = text[i];
    if (asciiTable.containsKey(letter)) {
      newText += asciiTable[letter]!;
    } else {
      newText += letter;
    }
  }

  return newText;
}
