void main() {
  print('-' * 70);
  print('EXEMPLO DE WHERE EM MAPA');
  print('=' * 70);

  Map<String, int> pessoas = {
    'Alice' : 20,
    'Bob' : 17,
    'Carol' : 15,
    'Dave' : 16,
    'Eve' : 30
  };

  // Filtra apenas as pessoas com idade maior de 18 anos
  // 1. pessoas.entreis retorna um iterable de MapEntry (cahve e valor)
  // 2. where((element) => element.value > 18) filtra apenas as entradas
  //    cujo valor (idade) é maior 18
  //3. Map.fromEntries(...) convertenovamente o iterable filtrado em um Map

  Map<String, int> pessoasMaiores = Map.fromEntries(pessoas.entries.where((element) => element.value > 18));

  // Saída esperada:
  print(pessoasMaiores); // {Alice : 20, Carol : 25, Eve : 30}
  print('-' * 70);
}