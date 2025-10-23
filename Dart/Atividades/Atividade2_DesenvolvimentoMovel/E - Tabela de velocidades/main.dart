import 'dart:io';

void main() {

    
  print('__' * 60);
  print('Oque é pra fazer? :  Faça um programa que receba um ano e verifique se ele é bissexto, exibindo a resposta.');
  print('__' * 60);
  print('Tabela de velocidades');
  print('__' * 60);

  while(true){

    stdout.write('Digite a aceleração (m/s²): ');
    String? aceleracao = stdin.readLineSync();

    if (aceleracao == null || aceleracao.isEmpty) {

      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Digite um número válido para a aceleração.');
      print('__' * 60);
      continue;
    }

    double? acel = double.tryParse(aceleracao);
    
    if (acel == null || acel  <= 0) {

      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Digite um número válido para a aceleração.E Maior que 0');
      print('__' * 60);
      continue;
    }

    stdout.write('Digite o tempo total (em segundos): ');
    String? tempo = stdin.readLineSync();

    if (tempo == null || tempo == 0) {

      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Digite um tempo inteiro positivo.E Maior que 0');
      print('__' * 60);
      continue;
    }

    int? temp = int.tryParse(tempo);

    if (temp == null || temp == 0) {

      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Digite um tempo Maior que 0');
      print('__' * 60);
      continue;
    }

    print('__' * 60);
    print('Tempo(s) | Velocidade(m/s)');
    print('__' * 60);

    for (int i = 1; i <= temp; i++) {
      double veloc = acel * i;

      print('${i.toStringAsFixed(2)} | ${veloc.toStringAsFixed(2)}');

    }
    print('__' * 60);
    print(' ');

    print(' ');
    print('__' * 60);
    stdout.write('Você deseja continuar? (s/n): ');
    String? escolha = stdin.readLineSync();

    if (escolha == null || escolha.toLowerCase() == 'n' || escolha.toLowerCase() == 'nao') {

      print('');
      print('');
      print('Encerrando o programa...');
      print('');
      print('');
      break;

    } else if (escolha.toLowerCase() == 's' || escolha.toLowerCase() == 'sim') {
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
    }
  }
}