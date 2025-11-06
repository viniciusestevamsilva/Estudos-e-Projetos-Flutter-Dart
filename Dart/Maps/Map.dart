void main() {
  //------------------------------------------------------------
  // Map de agenda: cada chave é o nome da pessoa
  // e cada valor é outo Map com informações detalhadas (idade e email)
  Map<String, dynamic> agenda = {
    'Jonh': {'idade': 50, 'email': 'jonh@gmail.com'},
    'Jane': {'idade': 40, 'email': 'jone@gmail.com'},
  };

  //------------------------------------------------------------
  // Map de cadastro pessoal: chave → valor com tipos variados (int, double, String)
  // dynamic permite que cada valor seja de tipo diferente
  Map<String, dynamic> cadastro = {
    'nome': 'Jonh Doe',
    'nascimento' : 1970,
    'altura' : 1.80,
    'est_civil' : 'solteiro',
    'cidade' : 'Juiz de Fora',
    'uf' : 'MG'
  };

  //------------------------------------------------------------
  // Saída formatada
  print('-' * 70);
  print('Minha Agenda');
  print(agenda);
  print('-' * 70);

  print('-' * 70);
  print('Meu Cadastro');
  print(cadastro); // imprime o Map completo
  print('-' * 70);
}