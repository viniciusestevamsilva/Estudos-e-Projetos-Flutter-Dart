import 'dart:io';

class Calculadora {
  double entrada1;
  double entrada2;

  Calculadora(this.entrada1, this.entrada2);

  double divisao() => entrada1 / entrada2;
}

double lerDouble(String texto) {
  while (true) {
    stdout.write(texto);
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print("Entrada inválida! Digite um número.");
      continue;
    }

    double? numero = double.tryParse(entrada);

    if (numero == null) {
      print("Valor inválido! Digite um número válido.");
    } else {
      return numero;
    }
  }
}

void main() {
  print('-' * 70);
  double? valor1 = lerDouble('\nDigite o 1º valor: ');

  double? valor2 = lerDouble('Digite o 2º valor: ');
 
  Calculadora calc = Calculadora(valor1, valor2);

  print('\n=== RESULTADOS ===');
  print('Divisão: ${calc.divisao().toStringAsFixed(2)}');
  print('-' * 70);
}