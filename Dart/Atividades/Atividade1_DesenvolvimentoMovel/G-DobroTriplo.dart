import 'dart:io';

void main() {

  print('-' * 40);

  stdout.write('Digite um número: ');
  String? entrada = stdin.readLineSync();

  if (entrada != null && entrada.isNotEmpty) {
    double? numero = double.tryParse(entrada);

    if (numero != null) {
      double dobro = numero * 2;
      double triplo = numero * 3;

      print('-' * 40);
      print('Número digitado: $numero');
      print('Dobro: ${dobro.toStringAsFixed(2)}');
      print('Triplo: ${triplo.toStringAsFixed(2)}');
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
    print('Nada foi impresso, Digite algo válido!');
    print('-' * 40);
  }
}