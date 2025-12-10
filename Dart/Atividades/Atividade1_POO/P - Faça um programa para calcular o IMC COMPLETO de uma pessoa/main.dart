import 'dart:io';

double lerDouble(String mensagem) {
  while (true) {
    stdout.write(mensagem);
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.trim().isEmpty) {
      print("\nEntrada inválida! Digite um valor numérico.\n");
      continue;
    }

    double? numero = double.tryParse(entrada);
    if (numero == null) {
      print("\nValor inválido! Digite um valor numérico.\n");
    } else {
      return numero;
    }
  }
}

class IMC {
  double calcular({
    required double peso,
    required double altura}) {

    return peso / (altura * altura);
  }

  String classificar({
    required double imc}) {

    if (imc < 18.5) {
      return "Abaixo do peso";

    } else if (imc < 24.9) {
      return "Peso normal";

    } else if (imc < 29.9) {
      return "Sobrepeso";

    } else if (imc < 34.9) {
      return "Obesidade Grau I";

    } else if (imc < 39.9) {
      return "Obesidade Grau II";

    } else {
      return "Obesidade Grau III (mórbida)";

    }
  }
}

void main() {
  print('__' * 70);
  print("=== Cálculo Completo do IMC ===\n");

  double peso = lerDouble("Digite seu peso (kg): ");
  double altura = lerDouble("Digite sua altura (m): ");

  var imcCalc = IMC();

  double resultado = imcCalc.calcular(peso: peso, altura: altura);
  String classificacao = imcCalc.classificar(imc: resultado);

  print("\n------ RESULTADO ------");
  print("IMC = ${resultado.toStringAsFixed(2)}");
  print("Classificação = $classificacao");
  print('__' * 70);
}
