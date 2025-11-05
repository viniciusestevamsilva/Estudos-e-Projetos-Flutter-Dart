void main() {

  print('__' * 60);
  print('Oque é pra fazer? : Dada uma lista de strings, crie uma nova lista que contenha os mesmos elementos, mas na ordem inversa da lista original.\n O uso de List.reversed é permitido para fins de comparação, mas a implementação principal deve usar uma estrutura de repetição (for ou while).');
  print('__' * 60);
  print('Reversão Manual da Ordem dos Elementos');
  print('__' * 60);

  print('');
  List<String> ListaOriginal = [ 'Amar', 'vivendo', 'Cantando', 'Dançar', 'Luz', 'Flor', 'Colorindo', 'andando', 'sorrir', 'Trabalhando', 'sol' ];
  List<String> ListaInversa = [];

 for ( int i = ListaOriginal.length - 1 ; i >= 0; i--) {
   ListaInversa.add(ListaOriginal[i]);
 }

  print('__' * 60);
  print('Lista original: $ListaOriginal');
  print('Lista original: $ListaInversa');
  print('__' * 60);
}