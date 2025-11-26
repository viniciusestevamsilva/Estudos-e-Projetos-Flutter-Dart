Set<int> obterValoresUnicos(List<int> lista) {
  return lista.toSet();
}

int contarValoresUnicos(List<int> lista) {
  return lista.toSet().length;
}

void main() {
  print('__' * 60);
  print('Identificação e Contagem de Ocorrências Distintas');
  print('__' * 60);

  List<int> listaInteiros = [1, 12, 12, 31, 31, 13, 5, 4, 8, 91, 9, 7, 2, 6];

  Set<int> valoresUnicos = obterValoresUnicos(listaInteiros);
  int quantidadeUnicos = contarValoresUnicos(listaInteiros);

  print('Lista original: $listaInteiros');
  print('Valores únicos: $valoresUnicos');
  print('Quantidade de valores únicos: $quantidadeUnicos');
  print('__' * 60);
}
