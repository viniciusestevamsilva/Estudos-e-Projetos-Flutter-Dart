import 'dart:io';

void main()  {
  // Declarando de variáveis inteiras
  stdout.write('Entre com o valor de a: ');
  var a = double.parse(stdin.readLineSync()!);

  stdout.write('Entre com o valor de B: ');
  var b = double.parse(stdin.readLineSync()!);

  // Condicional simples com else opcional
  print('Testando se "a" é maior que "b"');
  if (a > b ) {
    print('Informação verdadeira !');
  } else {
    print('Informação falsa !');
  }

  print('Testando se "john" é diferente "Jane"');
  // Comparação de strngs
  String nome = 'john';

  if (nome != 'Jane') {
    print('Os nomes são diferentes!');
  } else {
    print('Os nomes são iguais');
  }

  // Condicionais encadeadas: avaliando a média de uma aluno
  double media = 4;
  print('Testando uma Média declarada ( ${media} )');

  if (media < 0 || media > 10) {
    print('Média inválida! Digite um valor entre 0 e 10.');
  } else if (media >= 7.5) {
    print('O aluno foi aprovado!');
  } else if (media >= 5) {
    print('O aluno está e, recuperação!');
  } else {
    print('O aluno foi reprovado!');
  }
}