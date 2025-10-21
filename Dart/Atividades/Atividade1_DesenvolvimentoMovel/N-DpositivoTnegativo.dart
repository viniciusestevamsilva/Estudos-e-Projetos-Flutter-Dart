import 'dart:io';

void main() {

  print('-' * 40);
  print('N - Dobro positivos e Triplho negativo');
  print('-' * 40);

  while(true){

    stdout.write('Digite um número: ');
    String? entrada = stdin.readLineSync();

    if (entrada != null && entrada.isNotEmpty) {

      int? numero = int.tryParse(entrada);

      if (numero != null) {
        int resultado;

        if (numero > 0) {
          resultado = numero * 2;
          print('O número é positivo. O dobro de $numero é $resultado.');

        } else if (numero < 0) {

          resultado = numero * 3;
          print('O número é negativo. O triplo de $numero é $resultado.');

        } else {

          print('O número é zero. Resultado: 0');
        }

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