import 'dart:io';

void main() {
  List<Map<String,dynamic>> pessoas = [];

  bool continuar = true;

  while (continuar) {
    stdout.write('Digite o nome: ');
    String? nome = stdin.readLineSync();

    if(nome == null || nome.trim().isEmpty) {
      print('Erro: nome não pode se vazio!\n');
      continue;
    }

    stdout.write('Digite o idade: ');
    String? idade = stdin.readLineSync();

    if(idade == null || idade.trim().isEmpty) {
      print('Erro: idade inválida!\n');
      continue;
    }

    pessoas.add({'nome': nome.trim(), 'idade' : idade});
    print('Pessoa adicionada com sucesso! \n');

    stdout.write('Deseja cadastrar outra pessoa? (s/n)');
    String? resposta = stdin.readLineSync();

    if (resposta == null || resposta.toLowerCase() != 's') {
      continuar = false;
    }
  }

    if ( pessoas.isEmpty){
      print('\n Nenhuma pessa cadastrada');

    } else {
      print('\n === Lista de pessoas cadastradas ===');
      for (int i = 0 ; i < pessoas.length; i++) {
        var pessoa = pessoas[i];
        print('${i + 1}. Nome: ${pessoa['nome']}, Idade: ${pessoa['idade']}');
      }
    }

  print('\n Program finalizado');
}