void main() 
{
  Guerreiro jonSnow = Guerreiro(
    'Jon Snow', 
    'Humano', 
    'Guerreiro', 
    25, 
    1.75, 
    false, 
    100, 
    80, 
    ['Combate com Espada', 'Liderança', 'Resiliência'], 
    'Espada Longa'
  );
  
  Mago daenerysTargaryen = Mago(
    'Daenerys Targaryen', 
    'Targaryen', 
    'Maga', 
    23, 
    1.68, 
    true, 
    90, 
    100, 
    ['Domínio de Dragões', 'Liderança', 'Fogo'], 
    'Fogo Dracônico'
  );

  Personagem aryaStark = Personagem(
    'Arya Stark', 
    'Humano', 
    'Aventureira', 
    18, 
    1.50, 
    false, 
    70, 
    60, 
    ['Agilidade', 'Disfarce', 'Luta com Adaga']
  );

  Personagem cerseiLannister = Personagem(
    'Cersei Lannister', 
    'Humano', 
    'Rainha', 
    42, 
    1.70, 
    false, 
    50, 
    30, 
    ['Manipulação', 'Estratégia', 'Liderança']
  );

  jonSnow.exibirFicha();
  daenerysTargaryen.exibirFicha();
  aryaStark.exibirFicha();
  cerseiLannister.exibirFicha();

  daenerysTargaryen.lancarFeitico();

  jonSnow.atacar(cerseiLannister);
  daenerysTargaryen.atacar(aryaStark);
}

abstract class Combate
{
  void atacar(Personagem alvo);
}

class Personagem
{
  String nome;
  String raca;
  String classe;
  int idade;
  double altura;
  bool isMagico;
  int pontosVida;
  int energia;
  List<String> listaHabilidades;

  Personagem(this.nome, this.raca, this.classe, this.idade, this.altura, this.isMagico, 
  this.pontosVida, this.energia, this.listaHabilidades);

  void exibirFicha()
  {
    print("\n=== FICHA DO PERSONAGEM ===\n"
    "\nNome: $nome\n"
    "Raça: $raca\n"
    "Classe: $classe\n"
    "Idade: $idade\n"
    "Altura: $altura\n"
    "Mágico: $isMagico\n"
    "Energia: $energia\n"
    "Pontos de Vida: $pontosVida\n"
    "Habilidades: $listaHabilidades"
    );
  }
}

class Guerreiro extends Personagem implements Combate
{
  String tipoDeArma;

  Guerreiro(String nome, String raca, String classe, int idade, double altura, bool isMagico, 
  int pontosVida, int energia, List<String> listaHabilidades, this.tipoDeArma)
  : super(nome, raca, classe, idade, altura, isMagico, 
  pontosVida, energia, listaHabilidades);

  @override
  void exibirFicha()
  {
    super.exibirFicha();
    print("Tipo de Arma: $tipoDeArma\n");
  }

  @override
  void atacar(Personagem alvo) 
  {
    if (alvo.pontosVida > 0) 
    {
      alvo.pontosVida -= 15;
      print("\nO guerreiro $nome retirou 15 pontos de vida do personagem ${alvo.nome}");

      if (alvo.pontosVida <= 0) 
      {
        print("${alvo.nome} ficou com ${alvo.pontosVida} pontos de vida e foi derrotado(a)!\n");
      }   
      else 
      {
        print("${alvo.nome} ficou com ${alvo.pontosVida} pontos de vida após o ataque\n");
      }
    } 
    else 
    {
      print("${alvo.nome} já foi derrotado, não é possível atacar!");
    }
}
}

class Mago extends Personagem implements Combate
{
  String feitico;

  Mago(String nome, String raca, String classe, int idade, double altura, bool isMagico, 
  int pontosVida, int energia, List<String> listaHabilidades, this.feitico)
  : super(nome, raca, classe, idade, altura, isMagico, 
  pontosVida, energia, listaHabilidades);

  void lancarFeitico()
  {
    if (energia > 0) 
    {
      print("$nome está lançando o feitiço $feitico");
      energia -= 20;
      print("Energia restante: $energia\n");
    } 
    else 
    {
      print("$nome não tem energia suficiente para lançar o feitiço.");
    }
  }
  
  @override
  void exibirFicha()
  {
    super.exibirFicha();
    print("Tipo de feitiço: $feitico\n");
  }

  @override
  void atacar(Personagem alvo) 
  {
    if (alvo.pontosVida > 0) 
    {
      alvo.pontosVida -= 10;
      print("O mago $nome retirou 10 pontos de vida do personagem ${alvo.nome}");

      if (alvo.pontosVida <= 0) 
      {
        print("${alvo.nome} ficou com ${alvo.pontosVida} pontos de vida e foi derrotado(a)!\n");
      }   
      else 
      {
        print("${alvo.nome} ficou com ${alvo.pontosVida} pontos de vida após o ataque\n");
      }
    } 
    else 
    {
      print("${alvo.nome} já foi derrotado, não é possível atacar!");
    }
}

}