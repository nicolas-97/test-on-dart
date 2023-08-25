import 'package:diacritic/diacritic.dart';

int divideFactorials(int numerator, int denominator) {
  int resultado = 1;
  //multiplica los numeros que no están cancelados.
  for(int i=denominator+1; i<=numerator;i++){
    resultado *= i;
  }
  return resultado;
}
bool isPalindrome(String text){
  //texto en minusculas, sin espacios.
  //text = text.toLowerCase().replaceAll(' ', '');
  text = removeDiacritics(text).toLowerCase().replaceAll(" ","");
  //frase al contrario.
  String textReversa = text.split('').reversed.join();
  return text == textReversa;
}

List<int> sort(List<int> list){
  list.sort();
  return list;
}

List<int> sieveOfEratosthenes(int limit) {
  //la lista inicia en true.
  List<bool> criba = List.generate(limit + 1, (index) => true);
  //se descartan 0 y 1 "false" (no primos).
  criba[0] = criba[1] = false;

  //se inicia en 2 hasta el limite.
  for (int numero = 2; numero <= limit; numero++) {
    if (criba[numero]) {
      //se descartan los multiplos del número como "false" (no primos).
      for (int multiplo = numero * numero; multiplo <= limit; multiplo += numero) {
        criba[multiplo] = false;
      }
    }
  }

  List<int> primos = [];
  for (int numero = 2; numero <= limit; numero++) {
    //se añaden los numeros primos que están como "true".
    if (criba[numero]) {
      primos.add(numero);
    }
  }
  return primos;
}