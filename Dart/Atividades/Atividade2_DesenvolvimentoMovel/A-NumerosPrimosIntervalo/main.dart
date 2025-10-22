import 'dart:io';

void main() {

  print('°~*' * 60);
  print('Números primos no intervalo');
  print('°~*' * 60);

  while(true) {

    stdout.write('Digite o 1° valor(A): ');
    String? valor = stdin.readLineSync();

    stdout.write('Digite o 2° valor(B): ');
    String? valor2 = stdin.readLineSync();

    print('°~*' * 60);
    print('');

    if ( valor != null && valor.isNotEmpty && valor2 != null && valor2.isNotEmpty) {

      int? a = int.tryParse(valor);
      int? b = int.tryParse(valor2);

      if (a != null && b != null) {

        int inicio = a < b ? a : b;
        int fim = a > b ? a : b;

        for (int i = inicio; i <= fim; i++) {
          if (i < 2) continue;

          bool primo = true;

          for (int j = 2; j <= i ~/ 2; j++) {
            if (i % j == 0) {
              primo = false;
              break;
            }
          }

          if (primo) {
            stdout.write('$i ');
          }
        }

        print('');
        print('°~*' * 60);
        print('');

      } else {

        print('°~*' * 60);
        print('ERRO');
        print('Nada foi impresso, Digite algo válido!');
        print('°~*' * 60);
        print('');
        print('');
      }

    } else {

      print('°~*' * 60);
      print('Digite algo válido para continuar.');
      print('°~*' * 60);
      print('');
      print('');
    }

    stdout.write('Você deseja continuar?(s/n): ');
    String? escolha = stdin.readLineSync();

    if ( escolha == null || escolha.toLowerCase() == 'n' || escolha.toLowerCase() == 'nao'){

      print('Encerrando o programa...');
      print('');
      print('');
      break;

    } else if ( escolha.toLowerCase() == 's' || escolha.toLowerCase() == 'sim') {
      continue;
      
    } else{

      print('°~*' * 60);
      print('Escolha uma das opções a cima.');
      print('°~*' * 60);
      print('');
    }

  }
}