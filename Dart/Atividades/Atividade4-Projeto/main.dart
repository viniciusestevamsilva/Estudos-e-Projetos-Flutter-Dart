import 'dart:io';

void main() {
  List<Map<String, dynamic>> alunos = [];

  while (true) {
    print('Gestor de Alunos');
    print('__' * 70);
    print('A → Cadastrar Alunos e Notas');
    print('S → Visualisar Alunos');
    print('D → Situação do Aluno');
    print('W → Sair');
    print('__' * 70);
    stdout.write('');
    String? opcao = stdin.readLineSync();

    stdout.write('\x1B[2J\x1B[0;0H');

    if (opcao == null ||
        opcao.isEmpty ||
        opcao.toUpperCase() != 'A' &&
            opcao.toUpperCase() != 'S' &&
            opcao.toUpperCase() != 'D' &&
            opcao.toUpperCase() != 'W') {
      print('');
      print('');
      print('__' * 70);
      print('ERRO');
      print('__' * 70);
      print('Entrada inválida. Tente novamente.');
      print('__' * 70);
      print('');
      print('');
      continue;
    }

    if (opcao.toUpperCase() == 'A') {
      stdout.write('\x1B[2J\x1B[0;0H');

      print('__' * 70);
      print('Cadastramento de Alunos e notas');
      print('__' * 70);
      stdout.write('Digite o nome do aluno: ');

      String? nome = stdin.readLineSync();
      if (nome == null || nome.isEmpty) {
        print('');
        print('');
        print('__' * 70);
        print(' Nome inválido!');
        print('__' * 70);
        print('');
        print('');
        continue;
      }

      List<double> notas = [];
      for (int i = 1; i <= 4; i++) {
        stdout.write('Digite a nota $i: ');
        String? entrada = stdin.readLineSync();

        double? nota = double.tryParse(entrada ?? '');
        if (nota == null) {
          print('');
          print('');
          print('__' * 70);
          print(' Valor inválido! A nota não pode ser vazia.');
          print('__' * 70);
          print('');
          print('');
          nota = 0.0;
        }
        notas.add(nota);
      }

      double media = notas.reduce((a, b) => a + b) / notas.length;

      String situacao = '';
      if (media >= 7) {
        situacao = 'Aprovado';
      } else if (media >= 5) {
        situacao = 'Recuperação';
      } else {
        situacao = 'Reprovado';
      }

      alunos.add({
        'nome': nome,
        'notas': notas,
        'media': media,
        'situacao': situacao,
      });

      stdout.write('\x1B[2J\x1B[0;0H');

      print('__' * 70);
      print('Aluno cadastrado com sucesso!\n');
      print('__' * 70);
      print('Nome: $nome');
      print('Notas: $notas');
      print('Média: ${media.toStringAsFixed(2)}');
      print('Situação: $situacao');
      print('__' * 70);
    } else if (opcao.toUpperCase() == 'S') {
      stdout.write('\x1B[2J\x1B[0;0H');

      if (alunos.isEmpty) {
        print('');
        print('__' * 70);
        print(' Nenhum aluno cadastrado');
        print('__' * 70);
        print('');
      } else {
        print('__' * 70);
        print('Lista de Alunos cadastrados');
        print('__' * 70);
        for (int i = 0; i < alunos.length; i++) {
          var aluno = alunos[i];
          print(
              '${i + 1}. Nome: ${aluno['nome']}, notas: ${aluno['notas']}, Média: ${aluno['media'].toStringAsFixed(2)}, Situação: ${aluno['situacao']}');
        }
      }
    } else if (opcao.toUpperCase() == 'D') {
      stdout.write('\x1B[2J\x1B[0;0H');

      print('__' * 70);
      print('Situação dos Alunos');
      print('__' * 70);

      if (alunos.isEmpty) {
        print('');
        print('__' * 70);
        print('Nenhum aluno cadastrado.');
        print('__' * 70);
        print('');

      } else {
        stdout.write('\x1B[2J\x1B[0;0H');
        print('');
        print('__' * 70);
        print('>>> Aprovados <<<');
        print('__' * 70);
        print('');

        bool temAprovados = false;

        for (var aluno in alunos) {
          if (aluno['situacao'] == 'Aprovado') {
            temAprovados = true;
            print('Nome: ${aluno['nome']}');
            print('Notas: ${aluno['notas']}');
            print('Média: ${aluno['media'].toStringAsFixed(2)}');
            print('__' * 70);
          }
        }
        if (!temAprovados) {
          print('');
          print('__' * 70);
          print('Nenhum aluno nesta categoria.');
          print('__' * 70);
          print('');
        }

        print('');
        print('>>> Recuperação <<<');
        print('__' * 70);
        bool temRecuperacao = false;
        for (var aluno in alunos) {
          if (aluno['situacao'] == 'Recuperação') {
            temRecuperacao = true;
            print('Nome: ${aluno['nome']}');
            print('Notas: ${aluno['notas']}');
            print('Média: ${aluno['media'].toStringAsFixed(2)}');
            print('__' * 70);
          }
        }
        if (!temRecuperacao) {
          print('');
          print('__' * 70);
          print('Nenhum aluno nesta categoria.');
          print('__' * 70);
          print('');
        }

        print('');
        print('>>> Reprovados <<<');
        print('__' * 70);
        bool temReprovados = false;
        for (var aluno in alunos) {
          if (aluno['situacao'] == 'Reprovado') {
            temReprovados = true;
            print('Nome: ${aluno['nome']}');
            print('Notas: ${aluno['notas']}');
            print('Média: ${aluno['media'].toStringAsFixed(2)}');
            print('__' * 70);
          }
        }
        if (!temReprovados) {
          print('');
          print('__' * 70);
          print('Nenhum aluno nesta categoria.');
          print('__' * 70);
          print('');
        }
      }
    } else if (opcao.toUpperCase() == 'W') {
      stdout.write('\x1B[2J\x1B[0;0H');
      print('');
      print('');
      print('Encerrando o programa...');
      print('');
      print('');
      break;
    }
  }
}
