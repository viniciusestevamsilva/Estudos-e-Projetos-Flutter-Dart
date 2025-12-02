import 'dart:math';

double desvioPadraoAmostral({
  required List<int> lista,
}) {

  double soma = 0;
  for (int i = 0; i < lista.length; i++) {
    soma += lista[i];
  }
  double media = soma / lista.length;

  double somaQuadrados = 0;
  for (int i = 0; i < lista.length; i++) {
    double diferenca = lista[i] - media;
    somaQuadrados += pow(diferenca, 2);
  }

  double variancia = somaQuadrados / (lista.length - 1);

  return sqrt(variancia);
}

void main() {
  List<int> numeros = [10, 12, 23, 23, 16, 23, 21, 16];

  double desvio = desvioPadraoAmostral(lista: numeros);

  print("Lista: $numeros");
  print("Desvio padrão amostral: $desvio");
}
