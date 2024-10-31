import 'enumStatusDeVida.dart';
class Personagem {
  String nome;
  String raca;
  String classe;
  int idade;
  double altura;
  bool isMagico;
  int _pontosVida;
  int _energia;
  List<String> listaHabilidades;
  StatusDeVida _status = StatusDeVida.vivo;

  Personagem(this.nome, this.raca, this.classe, this.idade, this.altura,
      this.isMagico, this._pontosVida, this._energia, this.listaHabilidades);

  int get pontosVida => _pontosVida;

  set pontosVida(int valor)
  {
    _pontosVida = valor;
    atualizarStatus();
  }

  int get energia => _energia;

  set energia(int valor)
  {
    _energia = valor;
  }

  StatusDeVida get statusDeVida => _status;

  void exibirFicha() {
    print("\n=== FICHA DO PERSONAGEM ===\n"
        "\nNome: $nome\n"
        "Raça: $raca\n"
        "Classe: $classe\n"
        "Idade: $idade\n"
        "Altura: $altura\n"
        "Mágico: $isMagico\n"
        "Energia: $energia\n"
        "Pontos de Vida: $pontosVida\n"
        "Habilidades: $listaHabilidades\n"
        "Status de vida: ${statusDeVida.name}");
  }

  void atualizarStatus() {
    if (_pontosVida > 50) 
    {
      _status = StatusDeVida.vivo;
    } 
    else if (_pontosVida >= 1 && _pontosVida <= 50) 
    {
      _status = StatusDeVida.ferido;
    } 
    else if (_pontosVida == 0) 
    {
      _status = StatusDeVida.derrotado;
    }
  }
}