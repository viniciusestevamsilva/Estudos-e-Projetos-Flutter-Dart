import 'dart:io';

void main() {

  print('-' * 40);
  print('I - Tabuada');
  print('-' * 40);

  while(true){

    stdout.write('Digite um número inteiro: ');
    String? valor = stdin.readLineSync();

    if ( valor != null && valor.isNotEmpty && valor != 0) {
      int? numero = int.tryParse(valor);
      
      if ( numero != null) {
        for (int i = 1; i <= 10; i++) {
          print('$numero x $i = ${numero * i}');
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