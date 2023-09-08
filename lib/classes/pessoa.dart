import '/exceptions/campos_exceptions.dart';

class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  void setNome(String nome) {
    if (nome.isEmpty) {
      throw NomeVazioException();
    }
    _nome = nome;
  }
  String getNome() => _nome;

  void setPeso(double peso) {
    if (peso <= 0) {
      throw PesoInvalidoException();
    }
    _peso = peso;
  }
  double getPeso() => _peso;

  void setAltura(double altura) {
    if (altura <= 0) {
      throw AlturaInvalidaException();
    }
    _altura = altura;
  }
  double getAltura() => _altura;

  Pessoa(String nome, double peso, double altura) {
    try {
      setNome(nome);
      setPeso(peso);
      setAltura(altura);
    } catch (e) {
      throw NomeVazioException();
    }
  }

  @override
  String toString() {
    return {
      "Nome": _nome, 
      "Peso": _peso, 
      "Altura": _altura
    }.toString();
  }
  
}