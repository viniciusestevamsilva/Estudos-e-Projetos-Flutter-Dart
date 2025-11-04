void main() {

  print('__' * 60);
  print('Oque é pra fazer? : Dada uma lista de números inteiros, o objetivo é primeiro filtrar apenas os números que são pares e, simultaneamente, \n maiores que 10. Após a filtragem, deve-se calcular a soma total desses números restantes.');
  print('__' * 60);
  print('Filtragem e Soma Condicional de Pares');
  print('__' * 60);

  print('');
  List<int> lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17];

  List<int> listaFiltrada = [];

  for (int num in lista) {

    if (num % 2 == 0 && num > 10) {

      listaFiltrada.add(num);
    }
  }
  
  int soma = 0;

  for (int num in listaFiltrada) {
    soma += num;
  }

  print('__' * 60);
  print('Lista filtrada: $listaFiltrada');
  print('Soma total dos números filtrados: $soma');
  print('__' * 60);

}