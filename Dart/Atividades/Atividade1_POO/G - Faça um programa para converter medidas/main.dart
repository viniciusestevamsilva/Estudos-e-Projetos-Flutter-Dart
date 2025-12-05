import 'dart:io';

int lerInt(String texto) {
  while (true) {
    stdout.write(texto);
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print("Entrada inválida! Digite um número inteiro.");
      continue;
    }

    int? numero = int.tryParse(entrada);

    if (numero == null) {
      print("Valor inválido! Digite um número inteiro válido.");
    } else {
      return numero;
    }
  }
}

class Medidas {
  int metros;

  Medidas(this.metros);

  int converterParaCentimetros() {
    return metros * 100;
  }

  double converterParaQuilometros() {
    return metros / 1000;
  }
}

void main() {
  print('-' * 70);

  int valor = lerInt('\nDigite um valor em metros: ');

  Medidas medida = Medidas(valor);

  print('\n=== RESULTADOS ===');
  print('Centímetros: ${medida.converterParaCentimetros()} cm');
  print('Quilômetros: ${medida.converterParaQuilometros()} km');
  print('-' * 70);
}
