void main() {
  // dECLARANDO AS VARIÁVEIS
  int a = 20;
  int b = 5;
  int c = 7;

  // Verificando Verdadeiro
  bool proposicao1 = a < b; // true
  bool proposicao2 = b > c; // true

  print('VERDADEIRO -----------------');
  print('$a > $b %% $b < $c - Respota: ${proposicao1 && proposicao2}');
  print('$a > $b || $b < $c - Respota: ${proposicao1 || proposicao2}');
  print('');

  // Verificando o Falso
  bool proposicao3 = a < b; // false
  bool proposicao4 = b < c; // false

  print('VERDADEIRO -----------------');
  print('$a > $b %% $b < $c - Respota: ${proposicao3 && proposicao4}');
  print('$a > $b || $b < $c - Respota: ${proposicao3 || proposicao4}');
  print('');

  // Negando um valor
  bool v = true;
  bool f = false;

  print('NEGANDO -----------------');
  print('Negando o V: ${!v}');
  print('Negando o F: ${!f}');
  print('');
}