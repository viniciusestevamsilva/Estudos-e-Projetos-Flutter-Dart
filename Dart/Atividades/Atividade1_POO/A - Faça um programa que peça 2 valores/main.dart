import 'dart:io';

class Calculadora {
  double entrada1;
  double entrada2;

  Calculadora(this.entrada1, this.entrada2);

  double soma() => entrada1 + entrada2;
  double subtracao() => entrada1 - entrada2;
  double produto() => entrada1 * entrada2;
  double divisao() => entrada1 / entrada2;
  double resto() => entrada1 % entrada2;
  int divisaoInteira() => entrada1 ~/ entrada2; 
}

double? lerDouble(String mensagem) {
  stdout.write(mensagem);
  String? entrada = stdin.readLineSync();

  if (entrada == null || entrada.trim().isEmpty) {
    print("Entrada inválida!");
    return null;
  }

  return double.tryParse(entrada);
}

void main() {
  print('-' * 70);
  double? valor1 = lerDouble('\nDigite o 1º valor: ');
  if (valor1 == null) return;

  double? valor2 = lerDouble('Digite o 2º valor: ');
  if (valor2 == null) return;

  Calculadora calc = Calculadora(valor1, valor2);

  print('\n=== RESULTADOS ===');
  print('Soma: ${calc.soma()}');
  print('Subtração: ${calc.subtracao()}');
  print('Produto: ${calc.produto()}');
  print('Divisão: ${calc.divisao()}');
  print('Resto da Divisão: ${calc.resto()}');
  print('Divisão Inteira: ${calc.divisaoInteira()}');
  print('-' * 70);
}