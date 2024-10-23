void main() 
{
  String nome = 'Manu';
  String raca = 'Fada';
  String classe = 'Explorador';
  int idade = 21;
  double altura = 1.55;
  bool magico = true;
  int energia = 100;
  int pontosVida = 100;
  bool maiorDeIdade;

  List<String> listaHabilidades = ['Visão Noturna', 'Capa da Invisibilidade'];

  if(idade >= 18)
  {
    maiorDeIdade = true;
  }
  else
  {
    maiorDeIdade = false;
  }

  print("=== FICHA DO PERSONAGEM ===\n"
  "\nNome: $nome\n"
  "Raça: $raca\n"
  "Classe: $classe\n"
  "Idade: $idade\n"
  "Altura: $altura\n"
  "Mágico: $magico\n"
  "Energia: $energia\n"
  "Pontos de Vida: $pontosVida\n"
  "Habilidades: $listaHabilidades\n"
  "Maior de idade: $maiorDeIdade");

  print("\n=== A BATALHA COMEÇOU! ===\n");
  while(energia > 0)
  {
    print("$nome está batalhando");
    energia -= 20;
    print("Energia restante = $energia\n");
  }

  if(energia == 0)
  {
    print("=== BATALHA ENCERRADA! ===\n");
    print("$nome ficou sem energia para continuar a batalha :c");
  }
}