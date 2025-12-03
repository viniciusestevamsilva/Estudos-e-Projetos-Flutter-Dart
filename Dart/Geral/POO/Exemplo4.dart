class Conta {
  // Definição (atributos) da  classe Conta
  late String titular;
  late double saldo;

  // Construtor da classe conta
  Conta(String titular, double saldoinicial) {
    this.titular = titular;
    this.saldo = saldoinicial;
  }

  // Método para realizar um depósito na conta
  void depositar(double valor) {
    saldo += valor;//  Incremento o valor ao saldo da conta
    print('Depósito de $valor realizado. Nova saldo: $saldo');
    print('-' * 70);
  }

  // Método para realizar um sanque na conta
  void sacar(double valor) {
    if (saldo >= valor) {
      saldo -= valor; // Decrementa o valor do saldo da conta
      print('Sanquede $valor realizado. Nova saldo: $saldo');
      print('-' * 70);
    } else {
      print('Saldo insuficiente. Operação não realizada');
      print('-' * 70);
    }
  }

  //  Método para exibir o saldo da conta
  void exibirSaldo() {
    print('Saldo atual: $saldo');
    print('-' * 70);
  }
}

// Uso da Classe Conta
void main() {
  // Criação de uma instâmncia da classe conta com o construtort
  Conta cliente1 = Conta('Jonh', 1000.0);
  // Chamada do método exibirSaldo() da instância minhaConta
  cliente1.exibirSaldo();
  // Chamada do método depositar() da instância minhaConta
  cliente1.depositar(500.0);
  // Chamada do método sacar() da instância minhaConta
  cliente1.sacar(200.0);
  // Chamada do método exibirSaldo() da instância minhaConta
  cliente1.exibirSaldo();
}