class PersonagemDerrotadoException implements Exception {
  String nomePersonagem;

  PersonagemDerrotadoException(this.nomePersonagem);

  @override
  String toString()
  {
    return '$nomePersonagem já foi derrotado, não é possível atacar!';
  }
}