import 'dart:io';

class Boletim {
  double n1;
  double n2;
  double n3;
  double n4;

  Boletim(this.n1, this.n2, this.n3, this.n4);

  double calcularMedia() {
    return (n1 + n2 + n3 + n4) / 4;
  }
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

  double nota1 = lerDouble('Digite a 1ª nota: ');
  double nota2 = lerDouble('Digite a 2ª nota: ');
  double nota3 = lerDouble('Digite a 3ª nota: ');
  double nota4 = lerDouble('Digite a 4ª nota: ');

  Boletim boletim = Boletim(nota1, nota2, nota3, nota4);

  double media = boletim.calcularMedia();

  print('\nA média das notas é: $media');
  print('-' * 70);
}
