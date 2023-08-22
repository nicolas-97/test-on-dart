import 'dart:convert';

int divideFactorials(int numerator, int denominator) {
  var num = 1;
  var den = 1;
  var res = 0;
  for (var i = 1; i <= numerator; i++) {
    num *= i;
  }

  for (var j = 1; j <= denominator; j++) {
    den *= j;
  }

  // Retorna el resutlado en un numero entero
  res = (num / den).floor();

  return res;
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

// Funcion que elimina las tildes o virgulillas
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
