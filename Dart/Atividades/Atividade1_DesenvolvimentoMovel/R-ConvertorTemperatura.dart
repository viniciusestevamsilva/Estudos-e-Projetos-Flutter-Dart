import 'dart:io';

void main() {

  print('-' * 40);
  print('1 - Celsius para Fahrenheit');
  print('2 - Fahrenheit para Celsius');
  print('-' * 40);

  stdout.write('Escolha o tipo (1 ou 2): ');
  String? opcaoStr = stdin.readLineSync();

  if (opcaoStr != null && opcaoStr.isNotEmpty) {
    int opcao = int.parse(opcaoStr);

    stdout.write('Digite a temperatura: ');
    String? tempStr = stdin.readLineSync();

    if (tempStr != null && tempStr.isNotEmpty) {
      double temp = double.parse(tempStr);
      double resultado;

      switch (opcao) {
        case 1:

          resultado = (temp * 9 / 5) + 32;
          print('Resultado: $temp°C = ${resultado.toStringAsFixed(2)}°F');

          print('-' * 40);
          break;

        case 2:

          resultado = (temp - 32) * 5 / 9;
          print('Resultado: $temp°F = ${resultado.toStringAsFixed(2)}°C');

          print('-' * 40);
          break;

        default:

          print('-' * 40);
          print('ERRO');
          print('Escolha uma das opções!');
          print('-' * 40);
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