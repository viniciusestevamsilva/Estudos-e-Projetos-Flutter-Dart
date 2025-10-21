import 'dart:io';

void main() {


  print('-' * 40);
  print('K - Calcular Dimensões de objetos');
  print('-' * 40);

  while(true){

    
    stdout.write('Digite o lado do quadrado: ');

    String? ladoQ = stdin.readLineSync();

    if (ladoQ != null && ladoQ.isNotEmpty) {

      double? lado = double.tryParse(ladoQ);

      if (lado != null && lado > 0) {

        double areaQuadrado = lado * lado;
        print('Área do quadrado: ${areaQuadrado.toStringAsFixed(2)}');

      } else {

        print('-' * 40);
        print('ERRO');
        print('Nada foi impresso, digite algo maior que 0!');
        print('-' * 40);
      }
    } else {

      print('-' * 40);
      print('ERRO');
      print('Nada foi impresso, Digite algo válido!');
      print('-' * 40);
      return;
    }

    print('-' * 40);

    stdout.write('Digite a base do retângulo: ');
    String? baseR = stdin.readLineSync();

    stdout.write('Digite a altura do retângulo: ');
    String? alturaR = stdin.readLineSync();

    if (baseR != null && alturaR != null && baseR.isNotEmpty && alturaR.isNotEmpty) {

      double? base = double.tryParse(baseR);
      double? altura = double.tryParse(alturaR);

      if (base != null && altura != null && base > 0 && altura > 0) {

        double areaRetangulo = base * altura;
        print('Área do retângulo: ${areaRetangulo.toStringAsFixed(2)}');
      } else {

        print('-' * 40);
        print('ERRO');
        print('Nada foi impresso, digite algo maior que 0!');
        print('-' * 40);
      }
    }else {

      print('-' * 40);
      print('ERRO');
      print('Nada foi impresso, Digite algo válido!');
      print('-' * 40);
      return;
    }

    print('-' * 40);
    
    stdout.write('Digite a base do triângulo: ');
    String? baseT = stdin.readLineSync();

    stdout.write('Digite a altura do triângulo: ');
    String? alturaT = stdin.readLineSync();

    if (baseT != null && alturaT != null && baseT.isNotEmpty && alturaT.isNotEmpty) {

      double? base = double.tryParse(baseT);
      double? altura = double.tryParse(alturaT);

      if (base != null && altura != null && base > 0 && altura > 0) {

        double areaTriangulo = (base * altura) / 2;
        print('Área do triângulo: ${areaTriangulo.toStringAsFixed(2)}');

      } else {

        print('-' * 40);
        print('ERRO');
        print('Nada foi impresso, digite algo maior que 0!');
        print('-' * 40);
      }
    }else {

      print('-' * 40);
      print('ERRO');
      print('Nada foi impresso, Digite algo válido!');
      print('-' * 40);
      return;
    }

    print('-' * 40);

    stdout.write('Digite a diagonal maior do losango: ');
    String? diagMaior = stdin.readLineSync();

    stdout.write('Digite a diagonal menor do losango: ');
    String? diagMenor = stdin.readLineSync();

    if (diagMaior != null && diagMenor != null && diagMaior.isNotEmpty && diagMenor.isNotEmpty) {

      double? dMaior = double.tryParse(diagMaior);
      double? dMenor = double.tryParse(diagMenor);

      if (dMaior != null && dMenor != null && dMaior > 0 && dMenor > 0) {
        double areaLosango = (dMaior * dMenor) / 2;
        print('Área do losango: ${areaLosango.toStringAsFixed(2)}');

      } else {

        print('-' * 40);
        print('ERRO');
        print('Nada foi impresso, digite algo maior que 0!');
        print('-' * 40);
      }
    } else {

      print('-' * 40);
      print('ERRO');
      print('Nada foi impresso, Digite algo válido!');
      print('-' * 40);
      return;
    }

    print('-' * 40);

    stdout.write('Deseja calcular outra média? (s/n): ');
    String? resposta = stdin.readLineSync();

    if (resposta == null || resposta.toLowerCase() != 's') {
      print('Encerrando o programa...');
      break;
    }
  }
}
