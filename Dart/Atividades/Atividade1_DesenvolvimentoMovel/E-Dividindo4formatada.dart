import 'dart:io';

void main() {

  print('-' * 40);
  print('E - Saida Formatada(4)');
  print('-' * 40);

  while(true){
    
    double? num1;
    double? num2;
    
    print('-' * 50);

    stdout.write('Digite o primeiro número: ');
    String? valor1 = stdin.readLineSync();

    if (valor1 != null && valor1.isNotEmpty) {
      num1 = double.tryParse(valor1);
    }

    stdout.write('Digite o segundo número: ');
    String? valor2 = stdin.readLineSync();

    if (valor2 != null && valor2.isNotEmpty) {
      num2 = double.tryParse(valor2);
    }

    if (num1 == null || num2 == null) {
      
      print('-' * 40);
      print('ERRO');
      print('Erro: Entrada inválida.');
      print('-' * 40);
      return;
    }

    if (num2 == 0) {
      print('-' * 40);
      print('ERRO');
      print('Nada foi impresso, Não é possivel dividir por 0 !');
      print('-' * 40);
      return;
    }

    double resultado = num1 / num2;

    print('-' * 40);
    print('Resultado da divisão: ${resultado.toStringAsFixed(4)}');
    print('-' * 40);

    stdout.write('Deseja calcular outra média? (s/n): ');
    String? resposta = stdin.readLineSync();

    if (resposta == null || resposta.toLowerCase() != 's') {
      print('Encerrando o programa...');
      break;
    }

  }
}