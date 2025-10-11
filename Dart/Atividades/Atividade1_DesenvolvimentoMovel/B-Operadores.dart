import 'dart:io';

void main() {
  stdout.write('Digite o 1° Valor:');
  String? primeiro = stdin.readLineSync();

  stdout.write('Digite o 2° Valor:');
  String? segundo = stdin.readLineSync();

  if ( primeiro != null && primeiro.isNotEmpty &&  segundo != null &&  segundo.isNotEmpty) {

    int valor1 = int.parse(primeiro);
    int valor2 = int.parse(segundo);

    int soma = valor1 + valor2;
    int produto = valor1 * valor2;
    int subtracao = valor1 - valor2;
    double divisao = valor1 / valor2;
    int restoDivisao = valor1 % valor2;
    int divInteira = valor1 ~/ valor2;

    print('-' * 40);
    print('A soma de $valor1 + $valor2 = $soma');
    print('A subtração de $valor1 - $valor2 = $subtracao');
    print('A multiplicação de $valor1 * $valor2 = $produto');
    print('A divisão de $valor1 / $valor2 = ${divisao.toStringAsFixed(2)}');
    print('A divisão inteira de $valor1 ~/ $valor2 = $divInteira');
    print('O resto da divisão de $valor1 % $valor2 = $restoDivisao');
    print('-' * 40);

  } else {
    print('-' * 40);
    print('ERRO');
    print('-' * 40);
    print('Nada foi impresso, Digite algo válido!');
  }
}