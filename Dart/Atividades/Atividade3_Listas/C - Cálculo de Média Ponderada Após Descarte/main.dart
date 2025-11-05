void main() {

  print('__' * 60);
  print('Oque é pra fazer? : Considere uma lista de notas de alunos. O exercício exige que se descarte a menor nota da lista e, em seguida, \ncalcule a média aritmética das notas restantes. O resultado deve ser um número decimal (double).');
  print('__' * 60);
  print('Cálculo de Média Ponderada Após Descarte');
  print('__' * 60);

  print('');
  List<List<dynamic>> notas = [
    ['Digin', [8.0, 6.5, 9.0, 7.5]],
    ['Dogao', [9.5, 8.0, 7.0, 10.0]],
    ['Kadin', [5.5, 6.0, 6.5, 7.0]]
  ];

  for (var aluno in notas) {
    String nome = aluno[0];
    List<double> listaNotas = List<double>.from(aluno[1]);

    listaNotas.remove(listaNotas.reduce((a, b) => a < b ? a : b));

    double media = listaNotas.reduce((a, b) => a + b) / listaNotas.length;

    print('Aluno: $nome');
    print('Média (sem menor nota): ${media.toStringAsFixed(2)}');

  }
  print('__' * 60);
}