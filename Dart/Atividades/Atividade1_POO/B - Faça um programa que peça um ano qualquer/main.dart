import 'dart:io';

class Pessoa {
  int anoNascimento;

  Pessoa(this.anoNascimento);

  int calcularIdade() {
    int anoAtual = DateTime.now().year;
    return anoAtual - anoNascimento;
  }
}

int? lerInt(String mensagem) {
  stdout.write(mensagem);
  String? entrada = stdin.readLineSync();

  if (entrada == null || entrada.trim().isEmpty) {
    print("Entrada inválida!");
    return null;
  }

  return int.tryParse(entrada);
}

void main() {
  print('-' * 70);
  int? ano = lerInt('Digite o ano de nascimento: ');
  if (ano == null) return;

  Pessoa pessoa = Pessoa(ano);

  print('A idade é: ${pessoa.calcularIdade()} anos');
  print('-' * 70);
}
