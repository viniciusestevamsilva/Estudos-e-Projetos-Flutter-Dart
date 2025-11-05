void main() {

  print('__' * 60);
  print('Oque é pra fazer? : Dada uma lista de palavras (strings), filtre e colete em uma nova lista apenas as palavras que satisfazem duas condições simultâneas: \n1) o comprimento da palavra deve ser maior que 5 caracteres; \n2) a palavra deve começar com a letra "A" (maiúscula ou minúscula).');
  print('__' * 60);
  print('Filtragem Dupla em Lista de Palavras');
  print('__' * 60);

  print('');

  List<String> ListaPalavras= ['Carro', 'Poste', 'Rua', 'Paula', 'Igreja', 'otorrinolaringologista', 'Jimmy Neutron', 'Stalin', 'Azulejo', 'Artes', 'arremedeus'];

  List<String> ListaFiltrada = [];

  for (var palavra in ListaPalavras) {

    if (palavra.length >= 5 && (palavra.startsWith('A') || palavra.startsWith('a'))) {
      ListaFiltrada.add(palavra);
    }
  }

  print('Lista original: $ListaPalavras');
  print('Lista filtrada: $ListaFiltrada');
  print('__' * 60);
}