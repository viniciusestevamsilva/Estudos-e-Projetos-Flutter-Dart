import 'dart:io';

class ConversorMoedas {
  double valorReais;

  final double taxaDolar = 5.20;
  final double taxaEuro = 5.60;
  final double taxaWon = 0.0038;

  ConversorMoedas({required this.valorReais});

  void converterMoedas() {
    double emDolar = valorReais / taxaDolar;
    double emEuro = valorReais / taxaEuro;
    double emWon = valorReais / taxaWon;

    print("\n=== CONVERSÃO DE MOEDAS ===");
    print("Valor em reais: R\$ ${valorReais.toStringAsFixed(2)}");
    print("Dólares: US\$ ${emDolar.toStringAsFixed(2)}");
    print("Euros: € ${emEuro.toStringAsFixed(2)}");
    print("Wons: ₩ ${emWon.toStringAsFixed(2)}");
  }
}

double lerDouble(String mensagem) {
  while (true) {
    stdout.write(mensagem);

    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.trim().isEmpty) {
      print("Entrada inválida! Digite um valor numérico.\n");
      continue;
    }

    double? numero = double.tryParse(entrada);
    if (numero == null) {
      print("Valor inválido! Digite um número válido.\n");
    } else {
      return numero;
    }
  }
}

void main() {
  double valor = lerDouble("Digite um valor em reais: ");

  ConversorMoedas conversor = ConversorMoedas(valorReais: valor);
  conversor.converterMoedas();
}
