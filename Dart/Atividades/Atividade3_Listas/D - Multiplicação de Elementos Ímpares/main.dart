void main() {

  print('__' * 60);
  print('Oque é pra fazer? : Percorra uma lista de números inteiros. Para cada número, verifique se ele é ímpar.\n Se for ímpar, ele deve ser multiplicado por 2. Se for par, ele deve permanecer inalterado.\n O resultado final deve ser uma nova lista com os valores transformados.');
  print('__' * 60);
  print('Multiplicação de Elementos Ímpares');
  print('__' * 60);

  print('');

  List<int> NumerosInt = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> Par = [];
  List<int> ImPar = [];
  List<int> listaMista = [];

  for ( var num in NumerosInt) {

    if (num % 2 == 0) {

      listaMista.add(num);
      Par.add(num);
      
    } else {

      listaMista.add(num * 2);
      ImPar.add(num);

    }

  }

  print('Lista original: $NumerosInt');
  print('Lista de Pares: $Par');
  print('Lista de Impares: $ImPar');
  print('Lista Mista: $listaMista');
  print('__' * 60);
}