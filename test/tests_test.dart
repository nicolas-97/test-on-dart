import 'package:tests/tests.dart';
import 'package:test/test.dart';

void main() {
  test('División entre dos factoriales', () {
    expect(divideFactorials(5, 3), equals(20));
    expect(divideFactorials(10, 4), equals(151200));
    expect(divideFactorials(20, 10), equals(670442572800));
    expect(divideFactorials(50, 45), equals(254251200));
    expect(divideFactorials(180, 176), equals(1015123320));
  });

  test('is palindrome', () {
    expect(isPalindrome("Amor azul Ramera de todo te di Mariposa colosal sí yo de todo te di Poda la rosa Venus El átomo como tal es un evasor alado Pide todo te doy isla sol ocaso pirámide Todo te dare mar luz aroma"),
    true);

    expect(isPalindrome("somos o no somos"),
    true);

    expect(isPalindrome("alquitran de mar azul"),
    false);
  });

  test('Quick short', () {
    expect(sort([1,6,8,9,3]),[1,3,6,8,9]);
    expect(sort([12,14,81,9,74]),[9,12,14,74,81]);
    expect(sort([-972,319,109,580,-540,670,473,-137,160,366,-82,-265,392,-891,-999,56,-979,759,791,848,78,-254,-693,66,-225,339,-635,-832,545,348,-987,-581,101,2,-295,336,254,-47,-732,-733,-324,238,526,-88,882,-190,965,-973,-96,-648,-831,-134,608,-705,-320,134,-766,1000,227,586,868,173,83,-369,152,-426,-14,465,956,-936,-330,291,182,-819,28,-443,-590,520,179,-980,-582,-806,298,-122,796,-607,-796,-24,637,-20,728,-552,-890,335,-650,213,-329,247,220,516]),[-999, -987, -980, -979, -973, -972, -936, -891, -890, -832, -831, -819, -806, -796, -766, -733, -732, -705, -693, -650, -648, -635, -607, -590, -582, -581, -552, -540, -443, -426, -369, -330, -329, -324, -320, -295, -265, -254, -225, -190, -137, -134, -122, -96, -88, -82, -47, -24, -20, -14, 2, 28, 56, 66, 78, 83, 101, 109, 134, 152, 160, 173, 179, 182, 213, 220, 227, 238, 247, 254, 291, 298, 319, 335, 336, 339, 348, 366, 392, 465, 473, 516, 520, 526, 545, 580, 586, 608, 637, 670, 728, 759, 791, 796, 848, 868, 882, 956, 965, 1000]);
  });

  test('Criba de Eratóstenes', () {
    expect(sieveOfEratosthenes(30), equals([2, 3, 5, 7, 11, 13, 17, 19, 23, 29]));
    expect(sieveOfEratosthenes(50), equals([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47]));
    // Agrega más pruebas con otros límites aquí
  });

}
