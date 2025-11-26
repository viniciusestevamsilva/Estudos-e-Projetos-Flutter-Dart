List<String> filtrarPalavrasQueTerminamComR(List<String> lista) {
  return lista.where((p) => p.toLowerCase().endsWith('r')).toList();
}

String criarFrase(List<String> palavras) {
  return palavras.join(' ');
}

void main() {
  print('__' * 60);
  print('Criação de Frase com Filtro');
  print('__' * 60);

  List<String> listaFrases = [
    'Amar', 'vivendo', 'Cantando', 'Dançar', 'Luz',
    'Flor', 'Colorindo', 'andando', 'sorrir',
    'Trabalhando', 'sol'
  ];

  List<String> filtradas = filtrarPalavrasQueTerminamComR(listaFrases);
  String fraseFinal = criarFrase(filtradas);

  print('Lista original: $listaFrases');
  print('Palavras filtradas: $filtradas');
  print('Frase final: "$fraseFinal"');

  print('__' * 60);
}
