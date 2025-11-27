int segundoMaiorValor({
  required List<int> lista}) {
  var ordenados = lista.toSet().toList()..sort();
  return ordenados[ordenados.length - 2];
}

void main() {
  List<int> numerosInt = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  print('Segundo maior valor: ${segundoMaiorValor(lista: numerosInt)}');
}
