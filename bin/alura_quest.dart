import 'personagem.dart';
import 'mago.dart';
import 'guerreiro.dart';
import 'enumFeiticos.dart';

void main() {
  Guerreiro jonSnow = Guerreiro(
      'Jon Snow',
      'Humano',
      'Guerreiro',
      25,
      1.75,
      false,
      0,
      80,
      ['Combate com Espada', 'Liderança', 'Resiliência'],
      'Espada Longa');

  Mago daenerysTargaryen = Mago(
    'Daenerys Targaryen', 
    'Targaryen', 
    'Maga', 
    23,
    1.68, 
    true, 
    90, 
    100, 
    ['Domínio de Dragões', 'Liderança', 'Fogo']);

  Personagem aryaStark = Personagem(
    'Arya Stark', 
    'Humano', 
    'Aventureira', 
    18,
    1.50,
    false, 
    40, 
    60, 
    ['Agilidade', 'Disfarce', 'Luta com Adaga']);

  Personagem cerseiLannister = Personagem(
      'Cersei Lannister',
      'Humano',
      'Rainha',
      42,
      1.70,
      false,
      50,
      30,
      ['Manipulação', 'Estratégia', 'Liderança']);

  jonSnow.atualizarStatus();
  jonSnow.exibirFicha();

  aryaStark.atualizarStatus();
  aryaStark.exibirFicha();

  cerseiLannister.atualizarStatus();
  cerseiLannister.exibirFicha();

  daenerysTargaryen.atualizarStatus();
  daenerysTargaryen.exibirFicha();

  jonSnow.atacar(cerseiLannister);

  daenerysTargaryen.atacar(aryaStark);
  
  daenerysTargaryen.adicionarFeitico(Feiticos.fogo, 50);
  daenerysTargaryen.adicionarFeitico(Feiticos.gelo, 70);
  daenerysTargaryen.adicionarFeitico(Feiticos.cura, 100);

  daenerysTargaryen.lancarFeitico();
}