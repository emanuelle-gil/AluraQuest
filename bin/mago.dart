import 'dart:io';
import 'personagem.dart';
import 'combate.dart';
import 'enumFeiticos.dart';
class Mago extends Personagem implements Combate {
  Map<Feiticos, int> feiticos;

  Mago(String nome, String raca, String classe, int idade, double altura,
      bool isMagico, int pontosVida, int energia, List<String> listaHabilidades)
      : feiticos = {}, super(nome, raca, classe, idade, altura, isMagico, pontosVida, energia,
            listaHabilidades);

  void lancarFeitico() {

    if (feiticos.isEmpty)
    {
      print("$nome não possui feitiços disponíveis.");
      return;
    }

    print("Esses são os seus feitiços disponiveis:");
    feiticos.forEach((feitico, poder) 
    {
      print("${feitico.name} - Poder: $poder");
    });

    print("Escolha um feitiço para continuar: ");
    var escolha = stdin.readLineSync();

    try {
      var feiticoEscolhido = feiticos.keys.firstWhere(
      (f) => f.name.toLowerCase() == escolha!.toLowerCase());

      if (energia > 0) 
      {
        print("\n$nome está lançando o feitiço ${feiticoEscolhido.name}.");
        energia -= 20;
        print("Energia restante: $energia\n");
      } 
      else 
      {
        print("$nome não tem energia suficiente para lançar o feitiço.");
      }
    }
    catch (e) 
    {
      print("Feitiço inválido, tente novamente.");
    }
  }

  void adicionarFeitico(Feiticos feitico, int poder) 
  {
    feiticos[feitico] = poder;
  }

  @override
  void exibirFicha() {
    super.exibirFicha();
    print("Feitiços:");
    feiticos.forEach((feitico, poder) {
      print("${feitico.name} - Poder: $poder");
    });
  }

  @override
  void atacar(Personagem alvo) {
    if (alvo.pontosVida > 0) {
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