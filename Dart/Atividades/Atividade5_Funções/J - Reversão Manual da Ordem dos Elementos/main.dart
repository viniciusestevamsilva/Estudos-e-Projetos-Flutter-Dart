List<String> reverterLista(List<String> lista) {
  List<String> invertida = [];
  for (int i = lista.length - 1; i >= 0; i--) {
    invertida.add(lista[i]);
  }
  return invertida;
}

void main() {
  List<String> listaOriginal = [
    'Amar', 'vivendo', 'Cantando', 'Dançar', 'Luz',
    'Flor', 'Colorindo', 'andando', 'sorrir', 'Trabalhando', 'sol'
  ];

  List<String> listaInvertida = reverterLista(listaOriginal);

  print('Lista original: $listaOriginal');
  print('Lista invertida: $listaInvertida');
}
