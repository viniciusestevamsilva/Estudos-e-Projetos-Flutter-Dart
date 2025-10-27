import 'dart:io';

void main() {

  print('__' * 60);
  print('Oque é pra fazer? : Faça um programa que simule o resfriamento de um líquido a partir de uma temperatura inicial até atingir a temperatura ambiente (25°C). \n A cada segundo, a temperatura diminui 2%. Imprima a temperatura a cada segundo.');
  print('__' * 60);
  print(' Determinação do maior divisor comum (MDC)');
  print('__' * 60);

  while(true) {

    stdout.write('Digite a temperatura inicial do líquido (em °C): ');
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {

      print('');
      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Digite um número válido.');
      print('__' * 60);
      print('');
      continue;  
    }

    double? temp = double.tryParse(entrada);
    if (temp == null) {

      print('');
      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Digite um número válido.');
      print('__' * 60);
      print('');
      continue;  
    }

    print('__' * 60);
    print('Iniciando resfriamento... Temperatura inicial: ${temp.toStringAsFixed(2)} °C');
    print('__' * 60);

    int segundos = 0;
    
    while (temp! > 25) {
      segundos++;
      temp = temp * 0.98; 
      print('Após $segundos s: ${temp.toStringAsFixed(2)} °C');
  
    }

    print('__' * 60);
    print('Temperatura final atingida: ${temp.toStringAsFixed(2)} °C');
    print('Tempo total: $segundos segundos.');
    print('__' * 60);
  
    print(' ');
    print('__' * 60);
    stdout.write('Você deseja continuar? (s/n): ');

    String? escolha = stdin.readLineSync();

    if (escolha == null || escolha.toLowerCase() == 'n' || escolha.toLowerCase() == 'nao') {
      stdout.write('\x1B[2J\x1B[0;0H');

      print('');
      print('');
      print('Encerrando o programa...');
      print('');
      print('');
      break;

    } else if (escolha.toLowerCase() == 's' || escolha.toLowerCase() == 'sim') {
      stdout.write('\x1B[2J\x1B[0;0H');
      continue;

    } else {

      print('');
      print('');
      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Escolha uma das opções acima.');
      print('__' * 60);
      print('');
      print('');
      continue;
      }
  }
}