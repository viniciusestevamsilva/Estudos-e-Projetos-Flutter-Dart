import 'dart:io';

void main() {

  print('-' * 40);
  print('J - Convertor de moedas');
  print('-' * 40);

  while(true){

    const double valorEuro = 5.30;
    const double valorDolar = 5.00;
    const double valorWon = 270.0;
    
    stdout.write('Digite o valor em REAIS (RS): ');
    String? valorReais = stdin.readLineSync();

    if (valorReais != null && valorReais.isNotEmpty) {

      double? reais = double.tryParse(valorReais);

      if (reais != null && reais > 0) {

        double euros = reais / valorEuro;
        double dolares = reais / valorDolar;
        double wons = reais * valorWon;

        print('-' * 40);
        print('Com R\$ ${reais.toStringAsFixed(2)} você pode comprar:');
        print('€ ${euros.toStringAsFixed(2)} euros');
        print('US\$ ${dolares.toStringAsFixed(2)} dólares');
        print('₩ ${wons.toStringAsFixed(0)} wons');
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

    stdout.write('Deseja calcular outra média? (s/n): ');
    String? resposta = stdin.readLineSync();

    if (resposta == null || resposta.toLowerCase() != 's') {
      print('Encerrando o programa...');
      break;
    }
  }
}