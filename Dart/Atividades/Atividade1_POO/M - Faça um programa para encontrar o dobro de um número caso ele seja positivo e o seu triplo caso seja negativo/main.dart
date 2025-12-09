import 'dart:io';

class Calculadora {
  int numero;

  Calculadora({required this.numero});

  int calcular({bool mostrarResultado = true}) {
    int resultado;

    if (numero >= 0) {
      resultado = numero * 2;
    } else {
      resultado = numero * 3;
    }

    if (mostrarResultado) {
      print("\nO resultado é: $resultado");
    }

    return resultado;
  }
}

int lerInteiro(String mensagem) {
  while (true) {
    stdout.write(mensagem);
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.trim().isEmpty) {
      print("Entrada inválida! Digite um número inteiro.\n");
      continue;
    }

    int? numero = int.tryParse(entrada);
    if (numero == null) {
      print("Valor inválido! Digite um número inteiro.\n");
    } else {
      return numero;
    }
  }
}

void main() {
  int numero = lerInteiro("Digite um número: ");

  Calculadora calc = Calculadora(numero: numero);

  calc.calcular();
}