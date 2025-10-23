import 'dart:io';

void main() {

  print('__' * 60);
  print('Oque é pra fazer? : Faça um programa que receba um número inteiro N \n e calcule a soma de todos os múltiplos de 3 ou 5 menores que N.');
  print('__' * 60);
  print('Soma dos múltiplos');
  print('__' * 60);

  while(true){

    stdout.write('Digite seu valor: ');
    String? valor = stdin.readLineSync();

    if (valor == null || valor.isEmpty) {

      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Digite apenas números inteiros positivos.');
      print('__' * 60);
      continue;
    }

    int? n = int.tryParse(valor);
    if (n == null || n <= 0) {

      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Digite um número inteiro positivo válido.');
      print('__' * 60);
      continue;
    }

    int soma = 0;

    for (int i = 1; i < n; i++) {
      
      if (i % 3 == 0 && i % 5 == 0) {

        print('$i é múltiplo de 3 e 5');
        soma += i;

      } else if (i % 3 == 0) {

        print('$i é múltiplo de 3');
        soma += i;

      } else if (i % 5 == 0) {

        print('$i é múltiplo de 5');
        soma += i;
      }
    }

    print('__' * 60);
    print('A soma de todos os múltiplos de 3 ou 5 menores que $n é $soma');
    print('__' * 60);

    print(' ');
    print('__' * 60);
    stdout.write('Você deseja continuar? (s/n): ');
    String? escolha = stdin.readLineSync();

    if (escolha == null || escolha.toLowerCase() == 'n' || escolha.toLowerCase() == 'nao') {

      print('');
      print('');
      print('Encerrando o programa...');
      print('');
      print('');
      break;

    } else if (escolha.toLowerCase() == 's' || escolha.toLowerCase() == 'sim') {
      continue;

    } else {

      print('');
      print('');
      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Escolha uma das opções acima.');
      print('__' * 60);
      print('');
      print('');
    }
  }

}