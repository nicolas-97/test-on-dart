import 'package:diacritic/diacritic.dart';

int divideFactorials(int numerator, int denominator) {
  int repos = 1;
  for(int i = denominator; i < numerator; i++){
    repos += repos*i;
  }

  return repos;
}

bool isPalindrome(String text){
    String [] x = text.split("");
    String[] z = text.split("");
    Collections.reverse(Arrays.asList(x));
    if(x.equals(z)){
      return true;
    }
    
  return false;
}

List<int> sort(List<int> list){
  return [];
}

List<int> sieveOfEratosthenes(int limit) {

  List<int> numero = List.generate(limit-1, (index) => index + 2);
  List<int> resultado = [];
  int aux = 0;

    for(int ciclo = 0; !numero.isEmpty; ciclo++){
    aux = numero[0];
    resultado.add(aux);
    numero.removeWhere((item) => item%aux == 0 );

  }


  return  resultado;
}