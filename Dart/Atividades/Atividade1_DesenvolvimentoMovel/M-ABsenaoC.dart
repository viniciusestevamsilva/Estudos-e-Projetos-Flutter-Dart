import 'dart:io';

void main() {

  print('-' * 40);

  stdout.write('Digite o 1° valor(A): ');
  String? entradaA = stdin.readLineSync();

  stdout.write('Digite o 2 °valor(B): ');
  String? entradaB = stdin.readLineSync();

  if (entradaA != null && entradaB != null &&
    entradaA.isNotEmpty && entradaB.isNotEmpty) {

    int? a = int.tryParse(entradaA);
    int? b = int.tryParse(entradaB);

    if (a != null && b != null) {

      int c;

      if (a == b) {

        c = a + b;

        print('Os valores são iguais.\ C = A + B = $c');
      } else {

        c = a * b;
        print('Os valores são diferentes.\ C = A * B = $c');
      }

    } else {

      print('-' * 40);
      print('ERRO');
      print('Nada foi impresso, Digite algo válido!');
      print('-' * 40);
    }

  } else {

    print('-' * 40);
    print('ERRO');
    print('Nada foi impresso, Digite algo válido!');
    print('-' * 40);
  }
}