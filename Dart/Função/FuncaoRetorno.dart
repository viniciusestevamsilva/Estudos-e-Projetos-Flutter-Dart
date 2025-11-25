void main() {
  // Declara variáveis e passar funções
  double media = calcularMedia(10, 10, 10, 10);
  double divisao = calcularDivisao(10, 5);
  // Saída
  print('Média Aritmetica');
  print('-' * 70);
  print('A média é: $media');
  print('A divisao é: $divisao');
  // Calcular porcentagem
  double percent = 5;
  double valor = 100;
  double percetual = calcularPorcentagem(percent, valor);
  // Saída
  print('$percent% de $valor = $percetual');
}

// Declaração de função
double calcularMedia(double n1, double n2, double n3, double n4) =>
    (n1 + n2 + n3 + n4) / 4;

// Declaração de função
double calcularDivisao(double n1, double n2) {
  if (n2 == 0) {
    print('Erro: Divisão por zero!');
    return 0;
  }
  return n1 / n2;
}

// Calcula a divisão (arrow function)
double calcularPorcentagem(double percent,double valor) =>
  (percent * valor) / 100;