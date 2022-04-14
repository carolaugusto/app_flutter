
void main() {
  Pessoa n1 = Pessoa("Alice", 25);
  Pessoa n2 = Pessoa("Salete", 54);
  Pessoa n3 = Pessoa("Helena", 7);
  Pessoa n4 = Pessoa("Marco", 27);
  Pessoa n5 = Pessoa("Jason", 14);

  final pessoas = [n1, n2, n3, n4, n5];

  for (Pessoa p in pessoas) {
    print(" Aluno: ${p.nome}, ${p.idade} anos");
  }
}

class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  String toString() {
    return "$nome, $idade anos";
  }
}
