void main() {

  print('__' * 60);
  print('Oque é pra fazer? : Dada uma lista de números inteiros, encontre e imprima o segundo maior valor presente na lista.\n A lista pode conter duplicatas, mas o segundo maior valor deve ser o valor distinto que é imediatamente menor que o maior valor.');
  print('__' * 60);
  print('Determinação do Segundo Valor de Pico');
  print('__' * 60);

  print('');

  List<int> NumerosInt = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var Penultimo = NumerosInt[NumerosInt.length -2];

  print('Penúltimo item: $Penultimo');
  print('__' * 60);
}