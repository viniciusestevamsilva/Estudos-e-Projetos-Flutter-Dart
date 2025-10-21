import 'dart:io';

void main() {

  print('-' * 40);
  print('D - Calculando média de notas');
  print('-' * 40);

  while (true) {
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
          print('Digite um número válido!');
          print('-' * 40);
          i--;
        }
      } else {
        print('-' * 40);
        print('ERRO');
        print('Entrada vazia! Digite algo válido!');
        print('-' * 40);
        i--;
      }
    }

    double media = soma / 4;

    print('-' * 40);
    print('Média das 4 notas: ${media.toStringAsFixed(2)}');
    print('-' * 40);

    stdout.write('Deseja calcular outra média? (s/n): ');
    String? resposta = stdin.readLineSync();
    
    if (resposta == null || resposta.toLowerCase() != 's') {
      print('Encerrando o programa...');
      break;
    }
  }
}