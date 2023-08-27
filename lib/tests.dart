int divideFactorials(int numerator, int denominator) {
  int resultado = 1;
  for (int i = denominator; i < numerator; i++) {
    resultado += resultado * i;
  }

  return resultado;
}

bool isPalindrome(String texto) {
  texto = texto.toLowerCase().replaceAll(" ", "");

  int tamanio = texto.length;
  for (int posicion = 0; posicion < tamanio / 2; posicion++) {
    if (texto[posicion] != texto[tamanio - posicion - 1]) {
      return false;
    }
  }
  return true;
}

List<int> sort(List<int> list) {
  list.sort();
  return list;
}

List<int> sieveOfEratosthenes(int limit) {
  // Creamos una lista de booleanos llamada "primos" donde primos[i] será verdadero si i es primo.
  List<bool> primos = List.generate(limit + 1, (index) => true);
  // Números 0 y 1 como no primos.
  primos[0] = false;
  primos[1] = false;

// Iteramos a través de los números desde 2 hasta la raíz cuadrada de "limit".
  for (int i = 2; i * i <= limit; i++) {
    // Si i es un número primo, marcamos sus múltiplos como no primos.
    if (primos[i]) {
      for (int j = i * i; j <= limit; j += i) {
        primos[j] = false;
      }
    }
  }

  // Construimos la lista de números primos a partir de la lista "primos".

  List<int> numerosPrimos = [];
  for (int i = 2; i <= limit; i++) {
    if (primos[i]) {
      numerosPrimos.add(i);
    }
  }

  return numerosPrimos;
}
