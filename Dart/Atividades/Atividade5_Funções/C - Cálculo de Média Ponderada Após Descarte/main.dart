double calcularMediaSemMenor({
  required List<double> notas}) {
  List<double> copia = List.from(notas);

  double menor = copia.reduce((a, b) => a < b ? a : b);
  copia.remove(menor);

  double soma = copia.reduce((a, b) => a + b);
  return soma / copia.length;
}

void main() {
  print('__' * 60);
  print('Cálculo de Média Após Descarte da Menor Nota');
  print('__' * 60);

  List<List<dynamic>> notas = [
    ['Digin', [8.0, 6.5, 9.0, 7.5]],
    ['Dogao', [9.5, 8.0, 7.0, 10.0]],
    ['Kadin', [5.5, 6.0, 6.5, 7.0]]
  ];

  for (var aluno in notas) {
    String nome = aluno[0];
    List<double> listaNotas = List<double>.from(aluno[1]);

    double media = calcularMediaSemMenor(notas: listaNotas);

    print('Aluno: $nome');
    print('Média (sem a menor nota): ${media.toStringAsFixed(2)}');
  }

  print('__' * 60);
}
