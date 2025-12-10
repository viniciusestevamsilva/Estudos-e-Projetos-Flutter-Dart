import 'dart:io';

class VerificadorParidade {
  int numero;

  VerificadorParidade({
    required this.numero});

  void verificar({bool mostrarMensagem = true}) {
    String resultado = (numero % 2 == 0) ? "PAR" : "ÍMPAR";
    if (mostrarMensagem) {
      print("\nO número $numero é $resultado.");
    }
  }
}

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

void main() {
  print('__' * 70);
  int numero = lerInteiro("Digite um número qualquer: ");
  print("\n------ RESULTADO ------");

  VerificadorParidade verificador = VerificadorParidade(numero: numero);

  verificador.verificar();
  print('__' * 70);
}
