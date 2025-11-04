void main() {

  print('__' * 60);
  print('Oque é pra fazer? :Dada uma lista de inteiros que contém valores duplicados, o desafio é determinar quantos valores únicos existem na lista. \nA solução deve percorrer a lista e construir uma nova coleção (ou usar um Set temporário, se permitido, ou uma lista auxiliar) para armazenar apenas os elementos que ainda não foram vistos, \n reportando o total de elementos únicos ao final.');
  print('__' * 60);
  print('Identificação e Contagem de Ocorrências Distintas');
  print('__' * 60);


  print('');
  print('__' * 60);

  List<int> ListaInteiros = [1, 12, 12, 31, 31, 13, 5, 4, 8, 91, 9, 7, 2, 6];
  print('$ListaInteiros');

  Set<int> numerosUnicos = ListaInteiros.toSet();

  int quantidadeUnicos = numerosUnicos.length;

  print('Lista original: $ListaInteiros');
  print('Valores únicos: $numerosUnicos');
  print('Quantidade de valores únicos: $quantidadeUnicos');
  print('__' * 60);
}