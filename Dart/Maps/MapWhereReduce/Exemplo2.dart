void main() {
  print('-' * 70);
  print('EXEMPLO DE WHERE(), MAP() E REDUCE() COM STRINGS');
  print('-' * 70);

  // -----------------------------------------------------------
  // Map de pessoas: chave é o nom e valor é a idade
  Map<String, int> pessoas = {
    'Ana' : 17,
    'Bruno' : 22,
    'Carla' : 19,
    'Diego' : 25,
    'Elisa' : 16
  };

  // -----------------------------------------------------------
  // Encadeamento de métodos funcionasi:
  // Objetivo: pegar nomes de pesoas adultas, colocar em maiúculas e
  // concatenas em uma única String

  // Entradas do Map(nome, idade)
  String nomesAdultos = pessoas.entries 

      // Filtra: apenas maiores de idade → Bruno, Carla, Diego
      .where((entrada) => entrada.value >= 18)

      // Transforma: nome em maiúsculas → BRUNO, CARLA, DIEGO
      .map((entrada) => entrada.key.toUpperCase())

      // Reduz: concatena os nomes → "BRUNO, CARLA, DIEGO"
      .reduce((acumulador, nome) => '$acumulador, $nome');

  // -----------------------------------------------------------
  // Saída
  print('Nomes das pessoas adultas: $nomesAdultos');
  print('=' * 70);
}