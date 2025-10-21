import 'dart:io';

void main() {

  print('-' * 40);
  print('O - Par soma Impar');
  print('-' * 40);

  while(true){

    stdout.write('Digite um número: ');

    String? entrada = stdin.readLineSync();

    if (entrada != null && entrada.isNotEmpty) {

      int? numero = int.tryParse(entrada);

      if (numero != null) {

        int resultado;

        if (numero % 2 == 0) {

          print('O número $numero é PAR.');
          resultado = numero + 5;
        } else {

          print('O número $numero é ÍMPAR.');
          resultado = numero + 8;
        }

        print('Resultado da operação: $resultado');
      } else {

        print('-' * 40);
        print('ERRO');
        print('Nada foi impresso, Digite algo válido!');
        print('-' * 40);
      }
    } else {

      print('-' * 40);
      print('ERRO');
      print('Nada foi impresso, Digite algo válido!');
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
