List<String> normalizarEClassificar({
  required List<String> lista,
}) {

  Set<String> semDuplicatas = lista.toSet();

  List<String> resultado = semDuplicatas.toList();

  resultado.sort();

  return resultado;
}

void main() {
  List<String> valores = [
    'banana', 'Abacate', 'uva', 'banana', 'laranja',
    'Uva', 'abacaxi', 'laranja', 'Manga'
  ];

  List<String> resultado = normalizarEClassificar(lista: valores);

  print('__' * 60);
  print("Original: $valores");
  print("Normalizado e Classificado: $resultado");
  print('__' * 60);
}
