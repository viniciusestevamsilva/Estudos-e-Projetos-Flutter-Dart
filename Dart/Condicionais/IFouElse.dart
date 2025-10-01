import 'dart:io';

void main()  {
  // Declarando de variáveis inteiras
  stdout.write('Entre com o valor de a: ');
  var a = double.parse(stdin.readLineSync()!);

  stdout.write('Entre com o valor de B: ');
  var B = double.parse(stdin.readLineSync()!);

  // Condicional simples com else opcional
  print('Testando se "a" é maior que "b"');
  if (a > b ) {
    print('Informação verdadeira !');
  } else {
    print('Informação falsa !');
  }

  print('Testando se "john" é diferente "Jane"');
  // Comparação de strngs
  String nme = 'john';

  if (nome != 'Jane')
}