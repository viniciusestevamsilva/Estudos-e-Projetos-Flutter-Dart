List<int> intersecao({
  required List<int> lista1,
  required List<int> lista2,
}) {
  List<int> resultado = [];

  for (int i = 0; i < lista1.length; i++) {
    if (lista2.contains(lista1[i])) {
      resultado.add(lista1[i]);
    }
  }

  return resultado;
}

void main() {
  List<int> listaA = [1, 2, 3, 4, 5];
  List<int> listaB = [3, 4, 5, 6, 7];

  List<int> inter = intersecao(lista1: listaA, lista2: listaB);

  print('__' * 60);
  print("Lista 1: $listaA");
  print("Lista 2: $listaB");
  print("Interseção: $inter");
  print('__' * 60);
}
