import 'dart:io';

void main() {

  
  print('-' * 40);
  print('S - Calcular Juros');
  print('-' * 40);

  while(true){

    stdout.write('Informe o capital (R\$): ');
    String? entrada1 = stdin.readLineSync();

    stdout.write('Informe a taxa de juros (%): ');
    String? entrada2 = stdin.readLineSync();

    stdout.write('Informe o tempo: ');
    String? entrada3 = stdin.readLineSync();

    if (entrada1 != null &&  entrada2 != null && entrada3 != null && entrada1.isNotEmpty && entrada2.isNotEmpty && entrada3.isNotEmpty) {
      
      double? valor1 = double.tryParse(entrada1);
      double? valor2 = double.tryParse(entrada2);
      double? valor3 = double.tryParse(entrada3);

      if (valor1 != null && valor2 != null && valor3 != null) {

        if (valor1 > 0 && valor3 >= 0) {
          double Juros = valor1 * (valor2 / 100) * valor3;
          double resultado = valor1 + Juros;

          print('-' * 40);
          print('Juros: R\$ ${Juros.toStringAsFixed(2)}');
          print('Total: ${resultado.toStringAsFixed(2)}');
          print('-' * 40);

        } else {

          print('-' * 40);
          print('ERRO');
          print('Entradas devem ser positivas');
          print('-' * 40);
        }

      } else {

        print('-' * 40);
        print('ERRO');
        print('Nada foi impresso, vazio não pode ser calculado!');
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