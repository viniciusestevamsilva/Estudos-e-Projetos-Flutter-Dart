import 'dart:io';

void main() {
  print('1 - Número par');
  print('2 - Maior número');
  print('3 - Sair');


  stdout.write('Digite sua opção: '); // Adicionei a entrada de dados para que o código rodasse cmo o esperado
  var opcao = double.parse(stdin.readLineSync()!);

  switch (opcao) {
    case 1:
      int numero = 10;
      if (numero % 2 == 0) {
        print('O número $numero é par!');
      } else {
        print('O número $numero é impar!');
      }
      break;// Interrompe o case
    case 2:
      int a = 3;
      int b = 3;
      if (a > b) {
        print('O número $a é maior que o número $b!');
      } else if (a < b) {
        print('O número $a é menor que o número $b');
      } else {
        print('Os números são iguais');
      }
      break; // Intemrrompe o case
    case 3:
      print('Saindo do programa . . .');
      break;
    default:
      print('Fora do intervalo de opções!');
  }
}