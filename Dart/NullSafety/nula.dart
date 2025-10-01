void main(){
  // Está variável pode ser nula(por causa do ?)
  String? nome;

  // Esta variável NÃO pode ser nula (sem ?)
  String saudacao = "Olá";

  // ------------------
  print('Exemplo 1: Variável nula');
  print(nome); // Saída: null (tudo bem, ela pode ser nula)

  // ------------------
  print('\nExemplo 2: Atribuindo valor á variavel nula');
  nome = "Maria";
  print(nome); // Saída: Maria

  // ------------------
  print('\nExemplo 3: Acessando valor com !');
  // nome agora tem valor então podemos usar nome!
  String texto = nome!; //  Usando o operador ! para "tirar" o ? do tipo
  print('Texto com nome: $texto');

  // ------------------
  print('\nExemplo 4: Tentando usar variável não inicializada');
  // Vamos criar uma variavel que PODE se nula
  String? mensagem;

  // Agora vamos tentar forçar ela com !
  try {
    String novaMensagem = mensagem!; // Aqui vai dar erro
    print(novaMensagem);
  } catch(e) {
    print('Erro: você usar uma variável nula com !');
    print('Detalhes: $e');
  }
}