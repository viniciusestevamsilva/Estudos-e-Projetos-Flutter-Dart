void main() {
  // Lista do tipo String
  List<String> pinguin = [
    'Jaclyn Smith',
    'Farrah Fawcett',
    'Kate Jackson'];

  pinguin.forEach((atriz) {
    print(atriz);
  }) ;
}

/** 
 * Neste exemplo, a lista de strings
 * atrizes é inicializada com três 
 * elementos.
 * Em seguida, o método forEach()
 * é chamado na lista, com uma
 * função de callback que imprime
 * cada elemento na saída padrão.
 */