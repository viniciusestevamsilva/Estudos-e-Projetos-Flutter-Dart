List<int> obterComprimentos({
  required List<String> lista}) {
    
  return lista.map((p) => p.length).toList();
}

void main() {
  print('__' * 60);
  print('Transformação de Lista de Palavras em Lista de Comprimentos');
  print('__' * 60);

  List<String> listaPalavras = ['Carro', 'Azulejo', 'Rua', 'Computador', 'Sol'];
  List<int> listaComprimentos = obterComprimentos(lista: listaPalavras);

  print('Lista original: $listaPalavras');
  print('Lista de comprimentos: $listaComprimentos');

  print('__' * 60);
}
