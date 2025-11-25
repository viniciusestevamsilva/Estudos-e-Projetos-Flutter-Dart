import 'dart:io';

// Função para simular envio de email
void enviaremail(String destinatario, String assunto, String msg) {
  print('=' * 70);
  print('Enviando email para: $destinatario');
  print('Assunto: $assunto');
  print('Corpo; $msg');
  print('-' * 70);
  print('Email enviado com sucesso!');
  print('-' * 70);
  print('');

}

void main() {
  print('\n EXEMPLO DE FUNÇÃO VOID COM VALIDÇÃO DE DESTINATÁRIO');
  print('-' * 70);

  while(true) {
    // Leitura do destinatário
    stdout.write('Digite o destinatário: ');
    String destinatario = (stdin.readLineSync() ?? '').trim();

    if (destinatario.isEmpty) {
      print('Erro: destinatário não pode ficar vazio! Tente novamente.\n');
      continue; // volta para o início do loop principal
    }

    // Leitura do assunto
    stdout.write('Digite o assunto: ');
    String assunto = (stdin.readLineSync() ?? '').trim();
    if (assunto.isEmpty) assunto = 'Sem assunto';

    // Leitura da mensagem
    stdout.write('Digite o corpo da mensagem: ');
    String msg = (stdin.readLineSync() ?? '').trim();
    if (msg.isEmpty) msg = 'Mensagem vazia';

    // Enviar email
    enviaremail(destinatario, assunto, msg);

    // Perguntar se deseja continuar
    while (true) {
      stdout.write('Deseja enviar outro eail (s/n): ');
      String resposta = (stdin.readLineSync() ?? '').trim().toLowerCase();

      if (resposta == 's') {
        break; // volta para o loop principal
      } else if (resposta == 'n') {
        return; // encerra o progama
      } else {
        print('Resposta inválida! Digite "s" para sim ou "n" para não');
      }
    }
    print('');
  }
}