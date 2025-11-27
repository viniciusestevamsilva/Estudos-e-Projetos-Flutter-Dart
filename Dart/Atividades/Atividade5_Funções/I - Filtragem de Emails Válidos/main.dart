List<String> filtrarEmailsValidos({
  required List<String> emails}) {
    
  return emails.where((email) =>email.split('@').length == 2 && email.endsWith('.com')).toList();
}

void main() {
  print('__' * 60);
  print('Filtragem de Emails Válidos (Regra Simples)');
  print('__' * 60);

  List<String> listaEmails = [
    'jorgimmaia@gmail.com',
    'flavimdopneu@gmail',
    'teste@@hotmail.com',
    'ana@empresa.com',
    'maria@empresa.org',
    'pedrinmatadorfgmail'
  ];

  List<String> listaFiltrada = filtrarEmailsValidos(emails: listaEmails);

  print('Lista original: $listaEmails');
  print('Lista filtrada: $listaFiltrada');

  print('__' * 60);
}
