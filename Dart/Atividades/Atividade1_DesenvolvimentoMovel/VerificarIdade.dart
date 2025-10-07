import 'dart:io';

void main () {

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
    print('-' * 50);
    print('ERRO');
    print('-' * 50);
    print('Nada foi impresso, Digite algo válido!');
  }
}