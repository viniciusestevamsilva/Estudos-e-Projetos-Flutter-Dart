void main() {

  print('__' * 60);
  print('Oque é pra fazer? : Dada uma lista de strings, crie uma única string (frase) concatenando apenas as palavras que terminam com a letra "R" (maiúscula ou minúscula). As palavras devem ser separadas por um espaço na frase final.');
  print('__' * 60);
  print('Criação de Frase com Filtro');
  print('__' * 60);

  print('');

  List<String> listaFrases = [ 'Amar', 'vivendo', 'Cantando', 'Dançar', 'Luz', 'Flor', 'Colorindo', 'andando', 'sorrir', 'Trabalhando', 'sol' ];

  List<String> filtradas = [];

 for (var palavra in listaFrases) {
    if (palavra.endsWith('r') || palavra.endsWith('R')) {
      filtradas.add(palavra);
    }
  }

  String fraseFinal = filtradas.join(' ');

  print('Lista original: $listaFrases');
  print('Palavras que terminam com R: $filtradas');
  print('Frase final: "$fraseFinal"');
  print('__' * 60);
}