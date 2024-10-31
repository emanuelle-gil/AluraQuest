import 'personagem.dart';
import 'combate.dart';
class Guerreiro extends Personagem implements Combate {
  String tipoDeArma;

  Guerreiro(String nome, String raca, String classe, int idade, double altura, bool isMagico, int pontosVida, 
  int energia, List<String> listaHabilidades, this.tipoDeArma): super(nome, raca, classe, idade, 
  altura, isMagico, pontosVida, energia,listaHabilidades);

  @override
  void exibirFicha() {
    super.exibirFicha();
    print("Tipo de Arma: $tipoDeArma\n");
  }

  @override
  void atacar(Personagem alvo) {
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