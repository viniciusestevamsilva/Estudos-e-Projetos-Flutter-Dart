List<int> filtrarParesMaioresQue10(List<int> lista) {
  return lista.where((num) => num % 2 == 0 && num > 10).toList();
}

int somarLista(List<int> lista) {
  int soma = 0;
  for (int num in lista) {
    soma += num;
  }
  return soma;
}

void main() {
  print('__' * 60);
  print('Filtragem e Soma Condicional de Pares');
  print('__' * 60);

  List<int> lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17];

  List<int> listaFiltrada = filtrarParesMaioresQue10(lista);
  int soma = somarLista(listaFiltrada);

  print('Lista filtrada: $listaFiltrada');
  print('Soma total dos números filtrados: $soma');
  print('__' * 60);
}
