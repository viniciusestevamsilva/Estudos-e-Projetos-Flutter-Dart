import 'dart:io';

void main() {

  print('-' * 40);
  print('CALCULADORA DE IMC');
  print('-' * 40);

  stdout.write('Digite seu nome: ');
  String? nome = stdin.readLineSync();

  stdout.write('Digite seu peso (kg): ');
  String? entradaPeso = stdin.readLineSync();

  stdout.write('Digite sua altura (em m): ');
  String? entradaAltura = stdin.readLineSync();

  if (nome != null && nome.isNotEmpty &&
    entradaPeso != null && entradaPeso.isNotEmpty &&
    entradaAltura != null && entradaAltura.isNotEmpty) {

    double? peso = double.tryParse(entradaPeso);
    double? altura = double.tryParse(entradaAltura);

    if (peso != null && altura != null && peso > 0 && altura > 0) {
      double imc = peso / (altura * altura);

      print('-' * 40);
      print('Olá, $nome!');
      print('Seu IMC é: ${imc.toStringAsFixed(2)}');

      if (imc < 18.5) {

        print('Classificação: Abaixo do peso');
      } else if (imc < 25) {

        print('Classificação: Peso normal');
      } else if (imc < 30) {

        print('Classificação: Sobrepeso');
      } else if (imc < 35) {

        print('Classificação: Obesidade grau 1');
      } else if (imc < 40) {

        print('Classificação: Obesidade grau 2');
      } else {

        print('Classificação: Obesidade grau 3 (mórbida)');
      }

      print('-' * 40);

    } else {

      print('-' * 40);
      print('ERRO');
      print('Nada foi impresso, Digite algo válido!');
      print('-' * 40);
    }

  } else {

    print('-' * 40);
    print('ERRO');
    print('Nada foi impresso, Digite algo válido!');
    print('-' * 40);
  }
}