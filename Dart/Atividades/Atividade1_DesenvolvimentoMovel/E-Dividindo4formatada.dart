import 'dart:io';

void main() {

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
    print('Erro: Entrada inválida.');
    return;
  }

  if (num2 == 0) {
    print('-' * 40);
    print('ERRO');
    print('Nada foi impresso, Digite algo válido!');
    print('-' * 40);
    return;
  }

  double resultado = num1 / num2;

  print('-' * 40);
  print('Resultado da divisão: ${resultado.toStringAsFixed(4)}');
  print('-' * 40);
}