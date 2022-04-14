void main() {
  Pessoa n1 = Pessoa("Alice", 25, "F");
  Pessoa n2 = Pessoa("Salete", 54, "F");
  Pessoa n3 = Pessoa("Helena", 7, "F");
  Pessoa n4 = Pessoa("Marco", 27, "M");
  Pessoa n5 = Pessoa("Jason", 14, "M");

  final pessoas = [n1, n2, n3, n4, n5];

  for (Pessoa p in pessoas) {
    if (p.genero == "F") {
      print(" Aluno: ${p.nome}, ${p.idade} anos, gênero feminino");
    }
  }
}

class Pessoa {
  String nome;
  int idade;
  String genero;

  Pessoa(this.nome, this.idade, this.genero);
}
