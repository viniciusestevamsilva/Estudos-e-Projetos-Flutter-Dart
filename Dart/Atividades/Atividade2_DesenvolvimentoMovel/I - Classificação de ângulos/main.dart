import 'dart:io';

void main() {

  print('__' * 60);
  print('Oque é pra fazer? : Faça um programa que receba um ângulo em graus e classifique-o como agudo (<90°), reto (90°), obtuso (>90° e <180°) ou rente (180°).');
  print('__' * 60);
  print('Classificação de ângulos');
  print('__' * 60);

  while(true) {

    stdout.write('Digite seu angulo: ');
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty){

      print('');
      print('__' * 60);
      print('ERRO');
      print('__' * 60);
      print('Digite um número válido.');
      print('__' * 60);
      print('');
      continue;
    }

    double? angulo = double.tryParse(entrada);

    if (angulo == null || entrada.isEmpty){

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
    if (angulo < 90) {
      print('O ângulo de $angulo° é **AGUDO**.');
    } else if (angulo == 90) {
      print('O ângulo de $angulo° é **RETO**.');
    } else if (angulo > 90 && angulo < 180) {
      print('O ângulo de $angulo° é **OBTUSO**.');
    } else if (angulo == 180) {
      print('O ângulo de $angulo° é **RASO**.');
    } else {
      print('O ângulo de $angulo° está fora do intervalo esperado (0° a 180°).');
    }
    print('__' * 60);
    print('');


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