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

class CalculadoraParImpar {
  int calcular({
    required int valor})
    {

    if (valor % 2 == 0) {
      return valor + 5;
    } else {
      return valor + 8;
    }
  }
}

void main() {
    print('__' * 70);
    int numero = lerInteiro("Digite um número: ");

    var calc = CalculadoraParImpar();

    int resultado = calc.calcular(valor: numero);

    print("\n------ RESULTADO ------");
    print("$resultado");
    print('__' * 70);
}
