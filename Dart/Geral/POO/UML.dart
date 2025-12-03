import 'dart:io';

class Triangulo {
  // Atribuitos
  double base;
  double altura;

  // Métodos construtor
  Triangulo(this.base, this.altura);

  // Método para calcular a área
  double calcularArea() {
    return (base * altura) / 2;
  }
}

void main () {
  // Entrada de dados
  print('');
  stdout.write('Digite a medida da base do triângulo: ');
  double base = double.parse(stdin.readLineSync()!);

  stdout.write('Digite a medida da altura do triângulo: ');
  double altura = double.parse(stdin.readLineSync()!);

  // Instanciando objeto
  Triangulo triangulo = Triangulo(base, altura);
  double area = triangulo.calcularArea();

  // Saída
  print('A área do triangulo é: $area');
  print('-' * 70);
}