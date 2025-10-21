import 'dart:io';

void main() {

  print('-' * 40);
  print('F - Sucessor e Antecessor');
  print('-' * 40);

  while(true){

    stdout.write('Digite um número: ');
    String? entrada = stdin.readLineSync();

    if (entrada?.isNotEmpty == true) {
      int? numero = int.tryParse(entrada!);

      if (numero != null) {
        int antecessor = numero - 1;
        int sucessor = numero + 1;

        print('-' * 40);
        print('Número digitado: $numero');
        print('Antecessor: $antecessor');
        print('Sucessor: $sucessor');
        print('-' * 40);
      } else {
        print('-' * 40);
        print('ERRO');
        print('Nada foi impresso, Digite algo válido!');
        print('-' * 40);
      }
    } else {
      print('-' * 40);
      print('ERRO');
      print('Entrada vazia, Digite algo válido!');
      print('-' * 40);
    }

    stdout.write('Deseja calcular outra média? (s/n): ');
    String? resposta = stdin.readLineSync();

    if (resposta == null || resposta.toLowerCase() != 's') {
      print('Encerrando o programa...');
      break;
    }
  }
}