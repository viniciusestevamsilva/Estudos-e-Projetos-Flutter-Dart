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
        print('-' * 40);
        print('ERRO');
        print('Nada foi impresso, Digite algo válido!');
        print('-' * 40);
        i--;
      }
    } else {
      print('-' * 40);
      print('ERRO');
      print('Nada foi impresso, Digite algo válido!');
      print('-' * 40);
      i--;
    }
  }

  double media = soma / 4;

  print('-' * 40);
  print('Média das 4 notas: ${media.toStringAsFixed(2)}');
  print('-' * 40);
}
