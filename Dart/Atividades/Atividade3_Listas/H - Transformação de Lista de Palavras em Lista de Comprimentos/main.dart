void main() {

  print('__' * 60);
  print('Oque é pra fazer? : Dada uma lista de palavras, crie uma nova lista de inteiros onde cada inteiro representa o número de caracteres da palavra correspondente na lista original.');
  print('__' * 60);
  print('Transformação de Lista de Palavras em Lista de Comprimentos');
  print('__' * 60);

  print('');
  List<String> listaPalavras = ['Carro', 'Azulejo', 'Rua', 'Computador', 'Sol'];
  List<int> listaComprimentos = [];

  for (var palavra in listaPalavras) {
    listaComprimentos.add(palavra.length);
  }

  print('Lista original: $listaPalavras');
  print('Lista de comprimentos: $listaComprimentos');
  print('__' * 60);

}