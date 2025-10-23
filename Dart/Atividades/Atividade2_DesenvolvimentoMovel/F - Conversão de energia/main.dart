import 'dart:io';

void main() {
    
  print('__' * 60);
  print('Oque é pra fazer? : Faça um programa que leia um valor em joules e converta para calorias (1 caloria = 4,184 joules) \n, exibindo os resultados.');
  print('__' * 60);
  print('Conversão de energia');
  print('__' * 60);

  while(true){

    stdout.write('Digite o valor em Joules(J): ');
    String? valor = stdin.readLineSync();

    if ( valor == null || valor.isEmpty){

      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Digite um número válido.');
      print('__' * 60);
      continue;
    }

    double? joules = double.tryParse(valor);

    if (joules == null || joules < 0) {

      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Digite um número válido. E maior que 0');
      print('__' * 60);
      continue;
    }
    
    double calorias = joules / 4.184;

    print('__' * 30);
    print('Valor em Joules: ${joules.toStringAsFixed(2)} J');
    print('Convertido para Calorias: ${calorias.toStringAsFixed(2)} cal');
    print('__' * 30);
    print('');


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