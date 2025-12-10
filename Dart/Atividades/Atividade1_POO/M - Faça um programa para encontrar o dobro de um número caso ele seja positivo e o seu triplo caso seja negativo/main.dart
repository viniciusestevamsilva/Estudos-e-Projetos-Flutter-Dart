import 'dart:io';

class Calculadora {
  int numero;

  Calculadora({
    required this.numero});

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
      print("\nEntrada inválida! Digite um número inteiro.\n");
      continue;
    }

    int? numero = int.tryParse(entrada);
    if (numero == null) {
      print("\nValor inválido! Digite um número inteiro.\n");
    } else {
      return numero;
    }
  }
}

void main() {
  print('__' * 70);
  int numero = lerInteiro("Digite um número: ");

  Calculadora calc = Calculadora(numero: numero);

  print("\n------ RESULTADO ------");
  calc.calcular();
  print('__' * 70);
}