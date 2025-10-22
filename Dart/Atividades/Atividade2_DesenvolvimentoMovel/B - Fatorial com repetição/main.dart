import 'dart:io';

void main() {

  print('°~*' * 60);
  print('Fatorial com repetição');
  print('°~*' * 60);

  while(true) {

    stdout.write('Você deseja continuar?(s/n): ');
    print('°~*' * 60);
    print('');
    print('');
    
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