import 'dart:convert';
import 'dart:math';

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
  var list = <int>[];
  /*for (var i = 2; i <= limit; i++) {
    if (pow(i, 2) < limit) {
      list.add(i);
    } else {
      i = limit + 1;
    }
  }*/

  if (limit <= 1) {
    return [];
  }

  // Creamos una lista de booleanos para representar los números primos
  var isPrime = List<bool>.filled(limit + 1, true);
  isPrime[0] = false;
  isPrime[1] = false;

  // Marcar los números compuestos
  for (var p = 2; p * p <= limit; p++) {
    if (isPrime[p] == true) {
      for (var i = p * p; i <= limit; i += p) {
        isPrime[i] = false;
      }
    }
  }

  // Construir la lista de números primos
  var primes = <int>[];
  for (var p = 2; p <= limit; p++) {
    if (isPrime[p]) {
      primes.add(p);
    }
  }

  return primes;
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
