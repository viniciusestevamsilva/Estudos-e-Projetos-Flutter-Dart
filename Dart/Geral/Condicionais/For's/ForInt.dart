import 'dart:io';

void main()  {
  for (int i = 1; i <= 5; i++) {
    print(i); // Quebra a  linha
  }

  for (int i = 1; i <= 5; i++) {
    stdout.write('$i'); // Sem quebra de linha
  }
}
/**
 * Neste ecemplo, a variável i é inicialiada
 * com o valor 1 antes do início do loop.
 * A condição de controle i <= 5 verifica se a
 * variável i é menor ou igual a 5 . Enquanto
 * essa condição for verdadeira, o bloco de 
 * código dentro do loop será executado.
 * O incremento i+ é executado após cada iteração,
 * adicionando 1 á variável i. O resultado desse código
 * será a impressão do números de 1 a 5 na saída padrão.
 */