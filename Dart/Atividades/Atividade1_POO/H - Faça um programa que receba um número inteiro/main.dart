import 'dart:io';

class Tabuada {
  int numero;

  Tabuada({required this.numero});

  void imprimirTabuada({int limite = 10}) {
    print("\nTabuada do $numero:");
    for (int i = 1; i <= limite; i++) {
      print("$numero x $i = ${numero * i}");
    }
  }
}

int lerInteiro(String mensagem) {
  while (true) {
    stdout.write(mensagem);

    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.trim().isEmpty) {
      print("Entrada inválida! Tente novamente.\n");
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
  int numero = lerInteiro("Digite um número inteiro para gerar sua tabuada: ");

  Tabuada tabuada = Tabuada(numero: numero);

  print('\n=== RESULTADOS ===');
  tabuada.imprimirTabuada(limite: 10);
  print('-' * 70);
}
