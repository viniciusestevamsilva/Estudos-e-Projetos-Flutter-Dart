bool contemTodos({
  required List<int> listaPrincipal,
  required List<int> listaSubconjunto,
}) {
  for (int i = 0; i < listaSubconjunto.length; i++) {

    if (!listaPrincipal.contains(listaSubconjunto[i])) {
      
      return false;
    }
  }
  return true; 
}

void main() {

  List<int> principal = [1, 2, 3, 4, 5, 6];
  List<int> subconjunto1 = [2, 3, 5];
  List<int> subconjunto2 = [2, 7];

  print('__' * 60);
  print(contemTodos(
    listaPrincipal: principal,
    listaSubconjunto: subconjunto1,
  ));

  print(contemTodos(
    listaPrincipal: principal,
    listaSubconjunto: subconjunto2,
  ));
  print('__' * 60);
}
