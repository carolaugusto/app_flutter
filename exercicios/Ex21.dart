
void main() {
  ContaCorrente conta1 = ContaCorrente("Caio", 1998);
  ContaCorrente conta2 = ContaCorrente("Camila", 1991);
  ContaCorrente conta3 = ContaCorrente("Ana", 2001);

  final ContaCorrentes = [conta1, conta2, conta3];

  print("Lista: $ContaCorrentes, length: ${ContaCorrentes.length}");

  for (ContaCorrente c in ContaCorrentes) {
    print(c.dadosContaCorrente());
  }
}

class Conta {
  String nome;

  Conta(this.nome);

  String dadosContaCorrente() {
    return nome;
  }
}

class ContaCorrente extends Conta {
  int ano;

  ContaCorrente(nome, this.ano) : super(nome);

  String toString() {
    return "$nome - $ano";
  }

  @override
  String dadosContaCorrente() {
    return "Cliente: $nome  Abertura da conta: $ano";
  }
}
