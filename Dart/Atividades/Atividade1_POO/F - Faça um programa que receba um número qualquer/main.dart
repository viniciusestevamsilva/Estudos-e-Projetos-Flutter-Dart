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

  int dobro() {
    return numero * 2;
  }

  int triplo() {
    return numero * 3;
  }
}


void main() {
  print('-' * 70);

  int valor1 = lerInt('\nDigite um número inteiro: ');

  Calcular calc = Calcular(valor1);

  print('\n=== RESULTADOS ===');
  print('Dobro: ${calc.dobro()}');
  print('Triplo: ${calc.triplo()}');
  print('-' * 70);

}