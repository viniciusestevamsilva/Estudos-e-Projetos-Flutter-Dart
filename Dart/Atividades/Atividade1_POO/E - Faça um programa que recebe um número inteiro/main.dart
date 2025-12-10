import 'dart:io';

int lerInt(String texto) {
  while (true) {
    stdout.write(texto);
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print("\nEntrada inválida! Digite um número inteiro.");
      continue;
    }

    int? numero = int.tryParse(entrada);

    if (numero == null) {
      print("\nValor inválido! Digite um número inteiro válido.");
    } else {
      return numero;
    }
  }
}

class Calcular {
  int numero;

  Calcular(this.numero);

  int sucessor() {
    return numero + 1;
  }

  int antecessor() {
    return numero - 1;
  }
}

void main() {
  print('-' * 70);

  int valor1 = lerInt('\nDigite um número inteiro: ');

  Calcular calc = Calcular(valor1);

  print('\n=== RESULTADOS ===');
  print('Sucessor: ${calc.sucessor()}');
  print('Antecessor: ${calc.antecessor()}');
  print('-' * 70);
}
