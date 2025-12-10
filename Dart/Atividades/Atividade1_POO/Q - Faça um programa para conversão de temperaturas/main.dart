import 'dart:io';

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

class ConversorTemperatura {
  double celsiusParaFahrenheit({
    required double celsius}) {
    return (celsius * 9 / 5) + 32;
  }

  double fahrenheitParaCelsius({
    required double fahrenheit}) {
    return (fahrenheit - 32) * 5 / 9;
  }
}

void main() {
  print('__' * 70);
  print("=== Conversor de Temperaturas ===\n");
  print("1 - Celsius => Fahrenheit");
  print("2 - Fahrenheit => Celsius\n");

  stdout.write("Escolha a opção: ");
  String? opcao = stdin.readLineSync();

  var conversor = ConversorTemperatura();

  if (opcao == "1") {
    double c = lerDouble("\nDigite a temperatura em °C: ");
    double resultado = conversor.celsiusParaFahrenheit(celsius: c);

    print("\n------ RESULTADO ------");
    print("\n$resultado °F");

  } else if (opcao == "2") {
    double f = lerDouble("\nDigite a temperatura em °F: ");
    double resultado = conversor.fahrenheitParaCelsius(fahrenheit: f);

    print("\n------ RESULTADO ------");
    print("\n$resultado °C");

  } else {
    print("\nOpção inválida!\n");
  }

  print('__' * 70);
}
