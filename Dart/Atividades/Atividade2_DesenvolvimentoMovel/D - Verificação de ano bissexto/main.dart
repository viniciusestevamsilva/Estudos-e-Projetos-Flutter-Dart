import 'dart:io';

void main() {
  
  print('__' * 60);
  print('Oque é pra fazer? :  Faça um programa que receba um ano e verifique se ele é bissexto, exibindo a resposta.');
  print('__' * 60);
  print('Verificação de ano Bissexto');
  print('__' * 60);

  while(true){

    stdout.write('Digite o ano em questão: ');
    String? ano = stdin.readLineSync();

    if (ano == null || ano.isEmpty) {

      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Digite apenas números inteiros.');
      print('__' * 60);
      continue;
    }

    int? AnoDigitado = int.tryParse(ano);

    if ( AnoDigitado == null || AnoDigitado == 0) {

      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Digite apenas números inteiros, \n Menos (0).');
      print('__' * 60);
      continue;
    }

    if (AnoDigitado % 400 == 0 ) {

      print('');
      print('__' * 60);
      print('O ano $AnoDigitado é bissexto!');
      print('__' * 60);

    } else if ( AnoDigitado % 100 == 0) {

      print('');
      print('__' * 60);
      print('O ano $AnoDigitado é bissexto!');
      print('Ele é bissexto (contanto que seja múltiplo de 4)');
      print('__' * 60);

    } else if ( AnoDigitado % 4 == 0 ) {

      print('');
      print('__' * 60);
      print('O ano $AnoDigitado é bissexto!');
      print('__' * 60);

    } else {

      print('');
      print('__' * 60);
      print('O ano $AnoDigitado não é bissexto.');
      print('__' * 60);

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