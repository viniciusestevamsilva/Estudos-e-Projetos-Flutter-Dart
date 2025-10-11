import 'dart:io';

void main() {

  print('-' * 40);

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
}