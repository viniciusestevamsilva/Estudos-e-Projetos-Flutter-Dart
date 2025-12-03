import 'dart:io';

class Triangulo {
  // Atribuitos
  double base;
  double altura;

  // Métodos construtor
  Triangulo({required this.base, required this.altura});

  // Método para calcular a área
  double calcularArea() {
    return (base * altura) / 2;
  }
}

void main () {
  print('');
  stdout.write('Digite a medida da base do triângulo: ');
  double base = double.parse(stdin.readLineSync()!);

  stdout.write('Digite a medida da altura do triângulo: ');
  double altura = double.parse(stdin.readLineSync()!);

  // Instanciando objeto com parâmetros NOMEADOS
  Triangulo triangulo = Triangulo(base: base, altura: altura);

  double area = triangulo.calcularArea();

  print('A área do triangulo é: $area');
  print('-' * 70);
}