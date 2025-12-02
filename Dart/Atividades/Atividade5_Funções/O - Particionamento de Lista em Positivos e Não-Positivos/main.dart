List<int> particionarPositivos({
  required List<int> lista,
}) {
  List<int> positivos = [];
  List<int> naoPositivos = [];

  for (int i = 0; i < lista.length; i++) {

    if (lista[i] > 0) {

      positivos.add(lista[i]);
    } else {
      
      naoPositivos.add(lista[i]);
    }
  }

  List<int> resultado = [];
  resultado.addAll(positivos);
  resultado.addAll(naoPositivos);

  return resultado;
}

void main() {
  List<int> valores = [3, -1, 0, 5, -7, 2, 0, -3];

  List<int> particionada = particionarPositivos(lista: valores);

  print("Original: $valores");
  print("Particionada: $particionada");
}
