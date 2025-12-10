import 'dart:io';

class Calculadora {
  int a;
  int b;

  Calculadora({
    required this.a,
    required this.b});

  int calcular({bool mostrarResultado = true}) {
    int c = (a == b) ? a + b : a * b;

    if (mostrarResultado) {
      print("\nO valor de C é: $c");
    }

    return c;
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
 
  int a = lerInteiro("Digite o valor de A: ");
  int b = lerInteiro("Digite o valor de B: ");
  print("\n------ RESULTADO ------");


  Calculadora calc = Calculadora(a: a, b: b);

  calc.calcular();
  print('__' * 70);
}
