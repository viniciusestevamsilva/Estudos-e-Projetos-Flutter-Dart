import 'dart:io';

void main() {

  print('__' * 60);
  print('Oque é pra fazer? : Faça um programa que receba as distâncias percorridas a cada intervalo de tempo e calcule a velocidade média total do percurso.');
  print('__' * 60);
  print('Cálculo de velocidade média');
  print('__' * 60);
  

  double distanciaTotal = 0;
  double tempoTotal = 0;

  while(true) {


    stdout.write('Digite a distância percorrida neste intervalo(km): ');
    String? entradaDistancia = stdin.readLineSync();

    if (entradaDistancia == null || entradaDistancia.isEmpty) {

      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Digite uma distancia válida.');
      print('__' * 60);
      continue;

    }

    double? distancia = double.tryParse(entradaDistancia);
    if (distancia == null) {

      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Digite uma distancia válida.');
      print('__' * 60);
      continue;
    }

    stdout.write('Digite o tempo gasto neste intervalo(horas): ');
    String? entradaTempo = stdin.readLineSync();

    if (entradaTempo == null || entradaTempo.isEmpty) {

      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Digite um tempo válido(maior que 0).');
      print('__' * 60);
      continue;
    }

    double? tempo = double.tryParse(entradaTempo);
    if (tempo == null || tempo <= 0) {
      
      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Digite um tempo válido(maior que 0).');
      print('__' * 60);
      continue;
    }

    distanciaTotal += distancia;
    tempoTotal += tempo;

    if (tempoTotal > 0) {

      double velocidadeMedia = distanciaTotal / tempoTotal;

      print(' ');
      print('__' * 60);
      print('Distância total: ${distanciaTotal.toStringAsFixed(2)} km');
      print('Tempo total: ${tempoTotal.toStringAsFixed(2)} h');
      print('Velocidade média total: ${velocidadeMedia.toStringAsFixed(2)} km/h');
      print('__' * 60);
      print(' ');

    } else {

      print(' ');
      print('__' * 60);
      print('Não foi possível calcular a velocidade média (tempo total igual a 0).');
      print('__' * 60);
      print(' ');
    }

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