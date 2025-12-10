import 'dart:io';
import 'dart:math';

double lerDouble(String mensagem) {
  while (true) {
    stdout.write(mensagem);
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.trim().isEmpty) {
      print("\nEntrada inválida! Digite um valor numérico.\n");
      continue;
    }

    double? valor = double.tryParse(entrada);
    if (valor == null) {
      print("\nValor inválido! Digite um número.\n");
    } else {
      return valor;
    }
  }
}

class Juros {

  double calcularJurosSimples({
    required double capital,
    required double taxa,    
    required double tempo,
  }) {
    double taxaDecimal = taxa / 100;
    return capital * taxaDecimal * tempo;
  }

  // Juros Compostos: M = P * (1 + i)^t
  double calcularMontanteComposto({
    required double capital,
    required double taxa,  
    required double tempo,
  }) {
    double taxaDecimal = taxa / 100;
    return capital * (pow(1 + taxaDecimal, tempo));
  }
}

void main() {
  print('__' * 70);
  print("=== Cálculo de Juros ===\n");
  print("1 - Juros Simples");
  print("2 - Juros Compostos\n");

  stdout.write("Escolha a opção: ");
  String? opcao = stdin.readLineSync();

  double capital = lerDouble("\nDigite o capital inicial (R\$): ");
  double taxa = lerDouble("Digite a taxa (%) ao período: ");
  double tempo = lerDouble("Digite o tempo (em períodos): ");

  var juros = Juros();

  if (opcao == "1") {
    double j = juros.calcularJurosSimples(
      capital: capital,
      taxa: taxa,
      tempo: tempo,
    );

    double montante = capital + j;

    print("\n------ JUROS SIMPLES ------");
    print("Juros: R\$ ${j.toStringAsFixed(2)}");
    print("Montante: R\$ ${montante.toStringAsFixed(2)}");

  } else if (opcao == "2") {
    double montante = juros.calcularMontanteComposto(
      capital: capital,
      taxa: taxa,
      tempo: tempo,
    );

    double j = montante - capital;

    print("\n------ JUROS COMPOSTOS ------");
    print("Juros: R\$ ${j.toStringAsFixed(2)}");
    print("Montante: R\$ ${montante.toStringAsFixed(2)}");
  } else {
    print("\nOpção inválida!\n");
  }
  print('__' * 70);
}
