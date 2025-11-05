void main() {

  print('__' * 60);
  print('Oque é pra fazer? : Dada uma lista de strings que supostamente são endereços de email, filtre e colete em uma nova lista apenas os emails que contêm \nexatamente um caractere "@" e terminam com ".com".');
  print('__' * 60);
  print('Filtragem de Emails Válidos (Regra Simples)');
  print('__' * 60);

  print('');
  List<String> ListaEmails = [''];

  List<String> ListaFiltrada = [''];

  for ( var emails in ListaEmails) {

    if (emails.endsWith('.com')){
      ListaFiltrada.add(emails);
    }
  }

  print('Lista original: $ListaEmails');
  print('Lista filtrada: $ListaFiltrada');
  print('__' * 60);
}