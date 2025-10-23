import 'dart:io';
import 'dart:math';

void main() {

  print('__' * 60);
  print('Oque é pra fazer? :Faça um programa que receba um número inteiro N e imprima as \n potências de 2 de 0 até N (2⁰, 2¹, ..., 2ᴺ).');
  print('__' * 60);
  print('Sequência de potências');
  print('__' * 60);
  
  while(true) {

    stdout.write('Digite seu número: ');
    String? numero = stdin.readLineSync();

    if ( numero == null || numero.isEmpty){

      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Digite um número válido.');
      print('__' * 60);
      continue;
    }

    int? num = int.tryParse(numero);

    if ( num == null ){

      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Digite um número válido.');
      print('__' * 60);
      continue;
    }

    print('__' * 60);
    print('Potências de 2 de 0 até $num:');
    print('__' * 60);
    print(' ');
    
    for (int i = 0; i <= num; i++) {

      int potencia = pow(2, i).toInt();
      print('2^$i = $potencia');
    }

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