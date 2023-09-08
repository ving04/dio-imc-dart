class NomeVazioException implements Exception {
  String error() => "Não foi possível executar aplicação, Por favor informe um nome.";
}
class PesoInvalidoException implements Exception {
  String error() => "Peso inválido, peso deve ser maior que 0";
}
class AlturaInvalidaException implements Exception {
  String error() => "Altura inválida, altura deve ser maior que 0";
}
class PessoaException implements Exception {
  String error() => "Não foi possivel contruir a classe Pessoa.";
}
