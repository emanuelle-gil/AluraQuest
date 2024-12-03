import 'personagem.dart';
import 'mago.dart';
import 'guerreiro.dart';
import 'enumFeiticos.dart';

void main() {
  try{
    Guerreiro jonSnow = Guerreiro(
        'Jon Snow',
        'Humano',
        'Guerreiro',
        25,
        null,
        false,
        90,
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
      0, 
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
        null,
        false,
        50,
        30,
        ['Manipulação', 'Estratégia', 'Liderança']);

    //Testando try/catch - atribuir valor negativo p Jon Snow
    //jonSnow.exibirFicha();

    //Testando try/catch - PersonagemDerrotadoException
    //jonSnow.atacar(daenerysTargaryen);

    //Testando propriedades opcionais - Altura
    jonSnow.exibirFicha();
    daenerysTargaryen.exibirFicha();
    aryaStark.exibirFicha();
    cerseiLannister.exibirFicha();

  } catch (e) {
    print('Erro: $e');
  }
}