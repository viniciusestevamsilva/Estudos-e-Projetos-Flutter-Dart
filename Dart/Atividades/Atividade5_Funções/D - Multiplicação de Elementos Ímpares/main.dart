int transformarNumero({
  required int num}) {
    
  return num % 2 == 0 ? num : num * 2;
}

List<int> transformarLista({
  required List<int> lista}) {

  return lista.map((n) => transformarNumero(num: n)).toList();
}

Map<String, List<int>> separarParesImpares({
  required List<int> lista}) {

  List<int> pares = [];
  List<int> impares = [];

  for (int num in lista) {

    if (num % 2 == 0) {

      pares.add(num);
    } else {

      impares.add(num);
    }
  }

  return {
    'pares': pares,
    'impares': impares,
  };
}

void main() {
  print('__' * 60);
  print('Multiplicação de Elementos Ímpares');
  print('__' * 60);

  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  var separados = separarParesImpares(lista: numeros);

  List<int> listaTransformada = transformarLista(lista: numeros);

  print('Lista original: $numeros');
  print('Lista de Pares: ${separados['pares']}');
  print('Lista de Impares: ${separados['impares']}');
  print('Lista Mista (transformada): $listaTransformada');

  print('__' * 60);
}
