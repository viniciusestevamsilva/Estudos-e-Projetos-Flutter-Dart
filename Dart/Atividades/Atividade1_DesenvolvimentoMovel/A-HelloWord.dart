import 'dart:io';
void main() {

  print('-' * 40);
  print('A - Hello Word');
  print('-' * 40);

  while(true) {

    stdout.write('Digite a frase: ');

    String? palavra = stdin.readLineSync();

    if ( palavra != null && palavra.isNotEmpty ) {
      print('$palavra');

    } else {
      print('-' * 40);
      print('Nada foi impresso, Digite algo para printar!');
    }
    print('-' * 40);

    stdout.write('Deseja continuar? (s/n): ');
    String? resposta = stdin.readLineSync();

    if (resposta == null || resposta.toLowerCase() == 'n') {
      print('Encerrando o programa...');
      break; 
    }
  }
}