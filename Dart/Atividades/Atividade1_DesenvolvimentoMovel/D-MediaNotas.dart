import 'dart:io';

void main() {
  double soma = 0.0;

  for (int i = 1; i <= 4; i++) {
    stdout.write('Digite a nota $i: ');
    String? entrada = stdin.readLineSync();

    if (entrada != null && entrada.isNotEmpty) {
      double? nota = double.tryParse(entrada);

      if (nota != null) {
        soma += nota;
      } else {
        print('Nota inválida. Tente novamente.');
        i--;
      }
    } else {
      print('Entrada vazia. Tente novamente.');
      i--;
    }
  }

  double media = soma / 4;

  print('-' * 40);
  print('Média das 4 notas: ${media.toStringAsFixed(2)}');
  print('-' * 40);
}
