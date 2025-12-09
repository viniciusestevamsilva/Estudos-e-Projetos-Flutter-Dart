import 'dart:io';
import 'dart:math';

class CalculadoraArea {
  double areaQuadrado({required double lado}) {
    return lado * lado;
  }

  double areaRetangulo({required double base, required double altura}) {
    return base * altura;
  }

  double areaTriangulo({required double base, required double altura}) {
    return (base * altura) / 2;
  }

  double areaCirculo({required double raio}) {
    return pi * raio * raio;
  }
}

double lerDouble(String mensagem) {
  while (true) {
    stdout.write(mensagem);

    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print("Entrada inválida! Tente novamente.\n");
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
  CalculadoraArea calc = CalculadoraArea();

  print("==== CÁLCULO DE ÁREAS ====\n");

  double lado = lerDouble("Digite o lado do quadrado: ");
  double areaQ = calc.areaQuadrado(lado: lado);

  double baseR = lerDouble("\nDigite a base do retângulo: ");
  double alturaR = lerDouble("Digite a altura do retângulo: ");
  double areaR = calc.areaRetangulo(base: baseR, altura: alturaR);

  double baseT = lerDouble("\nDigite a base do triângulo: ");
  double alturaT = lerDouble("Digite a altura do triângulo: ");
  double areaT = calc.areaTriangulo(base: baseT, altura: alturaT);

  double raio = lerDouble("\nDigite o raio do círculo: ");
  double areaC = calc.areaCirculo(raio: raio);

  print("\n==== RESULTADOS ====");
  print("Área do quadrado: ${areaQ.toStringAsFixed(2)}");
  print("Área do retângulo: ${areaR.toStringAsFixed(2)}");
  print("Área do triângulo: ${areaT.toStringAsFixed(2)}");
  print("Área do círculo: ${areaC.toStringAsFixed(2)}");
}
