import 'dart:io';

void main() {

  print('-' * 40);
  print('O - Par soma Impar');
  print('-' * 40);
  print('Digite 3 números inteiros e diferentes:');
  print('-' * 40);

  while(true){

    stdout.write('Primeiro número: ');
    String? entrada1 = stdin.readLineSync();

    stdout.write('Segundo número: ');
    String? entrada2 = stdin.readLineSync();

  
    stdout.write('Terceiro número: ');
    String? entrada3 = stdin.readLineSync();

    if (entrada1 != null &&
        entrada2 != null &&
        entrada3 != null &&
        entrada1.isNotEmpty &&
        entrada2.isNotEmpty &&
        entrada3.isNotEmpty) {
      
      int? num1 = int.tryParse(entrada1);
      int? num2 = int.tryParse(entrada2);
      int? num3 = int.tryParse(entrada3);

      if (num1 != null && num2 != null && num3 != null) {
        if (num1 == num2 || num1 == num3 || num2 == num3) {

          print('-' * 40);
          print('ERRO');
          print('Os números devem ser diferentes.');
          print('-' * 40);
          return;
        }

        int maior, meio, menor;

        if (num1 > num2 && num1 > num3) {
          maior = num1;
          if (num2 > num3) {
            meio = num2;
            menor = num3;
          } else {
            meio = num3;
            menor = num2;
          }
        } else if (num2 > num1 && num2 > num3) {
          maior = num2;
          if (num1 > num3) {
            meio = num1;
            menor = num3;
          } else {
            meio = num3;
            menor = num1;
          }
        } else {
          maior = num3;
          if (num1 > num2) {
            meio = num1;
            menor = num2;
          } else {
            meio = num2;
            menor = num1;
          }
        }

        print('-' * 50);
        print('Números em ordem decrescente: $maior, $meio, $menor');
        print('-' * 50);

      } else {
        print('-' * 40);
        print('ERRO');
        print('Nada foi impresso, digite algo válido!');
        print('-' * 40);
      }

    } else {

      print('-' * 40);
      print('ERRO');
      print('Nada foi impresso, digite algo válido!');
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