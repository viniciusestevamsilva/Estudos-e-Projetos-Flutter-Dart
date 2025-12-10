import 'dart:io';

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


class Ordenador {
  List<int> ordenarDecrescente({
    required int a,
    required int b,
    required int c,
  }) {
    List<int> lista = [a, b, c];
    lista.sort((x, y) => y.compareTo(x));
    return lista;
  }
}

void main() {
  print('__' * 70);
  print("Digite três valores INTEIROS e DIFERENTES:\n");

  int n1 = lerInteiro("Digite o primeiro número: ");
  int n2 = lerInteiro("Digite o segundo número: ");
  int n3 = lerInteiro("Digite o terceiro número: ");

  var ordenador = Ordenador();

  List<int> resultado = ordenador.ordenarDecrescente(
    a: n1,
    b: n2,
    c: n3,
  );

  print("\n------ RESULTADO ------");
  print("\nValores em ordem decrescente: $resultado");
  print('__' * 70);
}
