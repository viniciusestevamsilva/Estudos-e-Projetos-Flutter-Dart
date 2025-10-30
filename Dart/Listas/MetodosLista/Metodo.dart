// Métodos para utilizar com listas
void main() {
  print('-' * 70);
  print('LISTA DE MÉTODOS PARA LISTAS');
  print('=' * 70);

  // add: adiciona m eleemento ao final da lista.
  List<int> listaInteiros = [1, 2, 3];
  print('Lista original: $listaInteiros');
  
  listaInteiros.add(4);
  print('Lista nova: $listaInteiros');
  print('-' * 70);

  // addAl: adiciona vários elementos ao final da lista.
  List<String> listaFrutas = ['banana', 'maça', 'pêra'];
  print('Lista original: $listaFrutas');

  listaFrutas.addAll(['Uva', 'goiaba', 'manga']);
  print('-' * 70);

  // remove: remove um elemento específico da lista
  List<String> listaNomes = ['João', 'Maria', 'Josè'];
  print('Lista original: $listaNomes');

  listaNomes.remove('João');
  print('Lista nova: $listaNomes');
  print('-' * 70);

  // removeAt: remove um elemento pelo índice
  List<double> listaDouble = [1.1, 2.2, 3.3];
  print('Lista original: $listaDouble');

  listaDouble.removeAt(1);
  print('Lista nova: $listaDouble');
  print('-' * 70);

  // inssert: insere um elemento em um índice específico
  List<String> listaArtista = ['Fernanda Torres', 'Paulo José', 'Raul Cortez'];
  print('Lista original: $listaArtista');

  listaArtista.insert(2, 'Grnade Otelo');
  print('Lista nova: $listaArtista');
  print('-' * 70);

  // insertAll: insere vários elementos em um índice específico
  List<int> listaNumeros = [3, 4, 5];
  print('Lista original: $listaNumeros');

  listaNumeros.insertAll(0, [1, 2]);
  print('Lista nova: $listaNumeros');
  print('-' * 70);

  // indexOf: retorna o índice do primeiro elemento encontrado na lista
  List<String> listaVogais = ['a', 'e','i' ,'o' ,'u', 'a','e','i','o','u'];
  print(listaVogais);
  print('A 1ª ocorrência da vogal o : índice ${listaVogais.indexOf('i')}');
  print('-' * 70);
}