import 'dart:io';
void main() {
  print('-' * 40);
  stdout.write('Digite a frase: ');

  String? palavra = stdin.readLineSync();

  if ( palavra != null && palavra.isNotEmpty ) {
    print('$palavra');

  } else {
    print('-' * 40);
    print('Nada foi impresso, Digite algo para printar!');
  }
  print('-' * 40);
}