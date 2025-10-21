import 'dart:io';

void main() {

  print('-' * 40);
  print('H - Medidas Variadas');
  print('-' * 40);

  while(true){

    stdout.write('Digite sua medida: ');
    String? medida =stdin.readLineSync();

    if ( medida != null && medida.isNotEmpty) {
      double ? metros = double.tryParse(medida);
      
      if ( metros != null && metros != 0) {
        double cm = metros * 100;
        double mm = metros * 1000;
        double km = metros / 1000;

        print('-' * 40);
        print('Metros: ${metros.toStringAsFixed(2)} m');
        print('Centímetros: ${cm.toStringAsFixed(2)} cm');
        print('Milímetros: ${mm.toStringAsFixed(2)} mm');
        print('Quilômetros: ${km.toStringAsFixed(4)} km');
        print('-' * 40);
        
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

    stdout.write('Deseja calcular outra média? (s/n): ');
    String? resposta = stdin.readLineSync();

    if (resposta == null || resposta.toLowerCase() != 's') {
      print('Encerrando o programa...');
      break;
    }
  }
}