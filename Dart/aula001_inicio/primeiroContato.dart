void main() {
  // Valores inteiros //
  int idade = 50;
  
  // Valores com ponto flutuante //
  double altura = 1.80;
  
  // Valores booleanos //
  bool opcao = true;
  
  // Valores do tipo String //
  String nome = "Jonh Doe";
  
  // ============================ //
  // Demonstração de inferência de tipo
  // var teste = 'José'; // tipo inferido:string
  // teste = 100; // ERRO: não é possivel atribuir int a uma variavel do tipo string
  
  // var numero = 10; // tipo inferido: int
  // numero = 'dez'; // ERRO: não é possivel atribuir String a uma variavel do tipo int
  
  // ============================ //
  // Saída formatada usando template strings
  print('-' * 70);
  print(' Meu nome é $nome, tenho $idade anos.');
  print(' Minha altura é ${altura.toStringAsFixed(2)}m.');
  print(' Esta é uma aula de Dart? $opcao');
  print('-' * 70);
  }
