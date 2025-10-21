import 'dart:io';

void main () {

  print('-' * 40);
  print('C - Verificando usa idade');
  print('-' * 40);

  while(true) {

    stdout.write('Digite o ano atual: ');
    String? anoAtualStr = stdin.readLineSync();

    stdout.write('Digite seu Ano de Nascimento: ');
    String? idade = stdin.readLineSync();


    if (anoAtualStr != null && anoAtualStr.isNotEmpty && idade != null && idade.isNotEmpty){

      int anoAtual = int.parse(anoAtualStr);
      int anoNascimento = int.parse(idade);

      int Suaidade = anoAtual - anoNascimento;

      print('Você tem $Suaidade anos.');
    } else {
      print('-' * 40);
      print('ERRO');
      print('-' * 40);
      print('Nada foi impresso, Digite algo válido!');
    }

    stdout.write('Deseja continuar? (s/n): ');
    String? resposta = stdin.readLineSync();

    if (resposta == null || resposta.toLowerCase() == 'n') {
      print('Encerrando o programa...');
      break; 
    }
  }
}