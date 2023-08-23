int divideFactorials(int numerator, int denominator) {
  int var1 = 1;
  for (var i = denominator + 1; i <= numerator; i++) {
    var1 = var1 * i;
  }
  return var1;
}

bool isPalindrome(String text) {
  String str1 = text
      .replaceAll(" ", "")
      .replaceAll("á", "a")
      .replaceAll("é", "a")
      .replaceAll("í", "i")
      .replaceAll("ó", "o")
      .replaceAll("ú", "u")
      .toLowerCase();
  String str2 = str1
      .replaceAll(" ", "")
      .replaceAll("á", "a")
      .replaceAll("é", "e")
      .replaceAll("í", "i")
      .replaceAll("ó", "o")
      .replaceAll("ú", "u")
      .toLowerCase();
  int cont = str2.length;
  bool prue = true;
  bool entr = true;

  for (var i = 0; i < str1.length; i++) {
    if (str1[i] != str2[cont - 1] && entr == true) {
      prue = false;
      entr = false;
    }
    cont = cont - 1;
  }
  return prue;
}

List<int> sort(List<int> list) {
  void quickSort(List<int> vecnumeros, int inicio, int fin) {
    if(inicio<fin){
      //Ubicamos el numero escojido como pivote en su lugar
      //ubicando los menores en cualquier orden a su izquierda y
      //ubicando los mayores en cualquier orden a su derecha    
      int posPiv=ubicarPivote(vecnumeros,inicio,fin);
      //Ahora recursivamente se repite el proceso en las sublistas
      //a la derecha del pivote
      quickSort(vecnumeros,posPiv+1,fin);
      //a la izquierda del pivote
      quickSort(vecnumeros,inicio,posPiv-1);
      
    }
    
  }

  int ubicarPivote(List<int> vecnumeros, int inicio, int fin) {
    while (inicio<fin){
      while (vecnumeros[fin]>=vecnumeros[inicio] && inicio<fin){
        fin--;
      }
      int cambio = vecnumeros[fin];
      vecnumeros[fin] = vecnumeros[inicio];
      vecnumeros[inicio] = cambio;
      while (vecnumeros[inicio]<=vecnumeros[fin] && inicio<fin){
        inicio++;
      }
      cambio = vecnumeros[fin];
      vecnumeros[fin] = vecnumeros[inicio];
      vecnumeros[inicio] = cambio;
    }
    return inicio;
  }
  int n = list.length;
  quickSort(list, 0, n - 1);
  return list;
}

List<int> sieveOfEratosthenes(int limit) {
  return [];
}
