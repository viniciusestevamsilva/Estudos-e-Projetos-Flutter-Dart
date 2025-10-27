import 'dart:io';

void main() {

  print('__' * 60);
  print('Oque é pra fazer? : Faça um programa que receba um número inteiro positivo e faça uma contagem regressiva até zero, imprimindo cada número.');
  print('__' * 60);
  print('Contagem regressiva');
  print('__' * 60);

  while(true) {

    stdout.write('');
    String? entrada = stdin.readLineSync();
    
    if (entrada == null || entrada.isEmpty){

      print('');
      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Digite um número válido.');
      print('__' * 60);
      print('');
      continue;      
    }

    int? valor = int.tryParse(entrada);

    if (valor == null){

      print('');
      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Digite um número válido.');
      print('__' * 60);
      print('');
      continue;      
    }

    print('');
    print('__' * 60);
    print('Contagem regressiva iniciando a partir de $valor:');
    print('__' * 60);

    for (int i = valor; i >= 0; i--) {
      print(i);
    }

    print('__' * 60);
    print('Fim da contagem!');
    print('__' * 60);


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