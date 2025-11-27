List<String> filtrarPalavras({
  required List<String> lista}) {
    
  return lista.where((p) =>
      p.length > 5 &&(p.startsWith('A') || p.startsWith('a'))).toList();
}

void main() {
  print('__' * 60);
  print('Filtragem Dupla em Lista de Palavras');
  print('__' * 60);

  List<String> listaPalavras = [
    'Carro', 'Poste', 'Rua', 'Paula', 'Igreja',
    'otorrinolaringologista', 'Jimmy Neutron', 'Stalin',
    'Azulejo', 'Artes', 'arremedeus'
  ];

  List<String> listaFiltrada = filtrarPalavras(lista: listaPalavras);

  print('Lista original: $listaPalavras');
  print('Lista filtrada: $listaFiltrada');

  print('__' * 60);
}
