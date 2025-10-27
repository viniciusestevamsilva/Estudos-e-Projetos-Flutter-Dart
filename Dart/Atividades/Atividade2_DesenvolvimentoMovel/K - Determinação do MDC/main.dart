import 'dart:io';

void main() {

  print('__' * 60);
  print('Oque é pra fazer? : Faça um programa que receba dois números inteiros e calcule o MDC usando o algoritmo de Euclides com repetição.');
  print('__' * 60);
  print(' Determinação do maior divisor comum (MDC)');
  print('__' * 60);

  while(true) {

   stdout.write('Digite o primeiro número inteiro: ');
    String? entrada1 = stdin.readLineSync();

    if (entrada1 == null || entrada1.isEmpty) {

      print('');
      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Digite um número válido.');
      print('__' * 60);
      print('');
      continue;  
    }

    int? valora = int.tryParse(entrada1);
    if (valora == null) {

      print('');
      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Digite um número válido.');
      print('__' * 60);
      print('');
      continue;  
    }

    stdout.write('Digite o segundo número inteiro: ');
    String? entrada2 = stdin.readLineSync();

    if (entrada2 == null || entrada2.isEmpty) {

      print('');
      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Digite um número válido.');
      print('__' * 60);
      print('');
      continue;  
    }

    int? valorb = int.tryParse(entrada2);
    if (valorb == null) {

      print('');
      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Digite um número válido.');
      print('__' * 60);
      print('');
      continue;  
    }

    int a = valora;
    int b = valorb;

    while (b != 0) {
      int resto = a % b;
      a = b;
      b = resto;
    }

    print('\n' + '__' * 60);
    print('O MDC dos números é: $a');
    print('__' * 60 + '\n');

    print(' ');
    print('__' * 60);
    stdout.write('Você deseja continuar? (s/n): ');

    String? escolha = stdin.readLineSync();

    if (escolha == null || escolha.toLowerCase() == 'n' || escolha.toLowerCase() == 'nao') {
      stdout.write('\x1B[2J\x1B[0;0H');

      print('');
      print('');
      print('Encerrando o programa...');
      print('');
      print('');
      break;

    } else if (escolha.toLowerCase() == 's' || escolha.toLowerCase() == 'sim') {
      stdout.write('\x1B[2J\x1B[0;0H');
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
      continue;
      }
  }
}