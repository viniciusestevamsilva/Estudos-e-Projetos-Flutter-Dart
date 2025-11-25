void main() {
  print('-' * 70);
  print('EXEMPLO DE FUNÇÃO ANÔNIMA: INTERMEDIÁRIA');
  print('-' * 70);

  var lista = [1, 2, 3, 4, 5];

  // utilizada com o método map()
  var novaLista = lista.map((numero) => numero * 2).toList();

  print(novaLista);
}

// FUNÇÃO ANÔNIMA 

void mainAvancada() {
  print('-' * 70);
  print('EXEMPLO DE FUNÇÃO ANÔNIMA : AVANÇADA');
  print('-' * 70);

  var lista = [1, 2, 3, 4, 5];

  //.isOdd é uma propriedade fornecida pela classe int em Dart
  // que retorna true e o número for ímpar e false se for par.
  var novaLista = lista
  .where((numero) {return numero.isOdd;}) // Busca
  .map((numero) => numero * 2).toList(); // Retorno com cálculo

  print(novaLista);
}